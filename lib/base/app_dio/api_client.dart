import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod_ca/base/app_dio/base_reponse.dart';
import 'package:flutter_riverpod_ca/base/app_error/exception.dart';
import 'package:flutter_riverpod_ca/base/app_error/failure.dart';
import 'package:flutter_riverpod_ca/base/app_utils/app_utils.dart';
import 'package:fpdart/fpdart.dart';

class ApiClient {
  final Dio _dio;

  ApiClient(this._dio);

  // Example method to make a GET request
  Future<Either<Failure, BaseReponse<dynamic>>> get(String path, {Map<String, dynamic>? queryParameters}) async {
    try {
      final checkConnectivity = await AppUtils.isConnected();
      if (!checkConnectivity) {
        throw NetworkException();
      }
      final response = await _dio.get(path, queryParameters: queryParameters);
      final baseResponse = BaseReponse.fromJson(response.data);
      return Right(baseResponse);
    } on DioException catch (e) {
      debugPrint('get >> $path on DioException: ${e.message}');
      return Left(_handleError(e));
    } on ServerException catch (e) {
      debugPrint('get >> $path on ServerException: ${e.message}');
      return Left(ServerFailure(message: e.message));
    } on NetworkException {
      debugPrint('get >> $path on NetworkException');
      return const Left(NetworkFailure());
    } on BadRequestException catch (e) {
      debugPrint('get >> $path on BadRequestException: ${e.message}');
      return Left(ValidationFailure(message: e.message));
    } catch (e) {
      debugPrint('get >> $path on Unexpected error occurred: $e');
      return Left(ServerFailure(message: 'Unexpected error occurred: $e'));
    }
  }

  // Example method to make a POST request
  Future<Either<Failure, BaseReponse<dynamic>>> post(String path, {dynamic data}) async {
    try {
      // Check network connectivity before making the API call
      final checkConnectivity = await AppUtils.isConnected();
      if (!checkConnectivity) {
        throw NetworkException();
      }
      final response = await _dio.post(path, data: data);
      final baseResponse = BaseReponse.fromJson(response.data);
      return Right(baseResponse);
    } on DioException catch (e) {
      debugPrint('post >> $path on DioException: ${e.message}');
      return Left(_handleError(e));
    } on ServerException catch (e) {
      debugPrint('post >> $path on ServerException: ${e.message}');
      return Left(ServerFailure(message: e.message));
    } on NetworkException {
      debugPrint('post >> $path on NetworkException');
      return const Left(NetworkFailure());
    } on BadRequestException catch (e) {
      debugPrint('post >> $path on BadRequestException: ${e.message}');
      return Left(ValidationFailure(message: e.message));
    } catch (e) {
      debugPrint('post >> $path on Unexpected error occurred: $e');
      return Left(ServerFailure(message: 'Unexpected error occurred: $e'));
    }
  }

  // Handle DioException and convert it to a Failure
  Failure _handleError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const ServerFailure(message: 'Connection timeout');
      case DioExceptionType.badResponse:
        switch (e.response?.statusCode) {
          case 400:
            return ServerFailure(message: e.response?.data['message'] ?? 'Bad Request');
          case 401:
            return UnauthorizedFailure(message: e.response?.data['message'] ?? 'Unauthorized');
          case 403:
            return ServerFailure(message: e.response?.data['message'] ?? 'Forbidden');
          case 404:
            return ServerFailure(message: e.response?.data['message'] ?? 'Not Found');
          case 500:
          case 501:
          case 502:
          case 503:
            return ServerFailure(message: e.response?.data['message'] ?? 'Server Error');
          default:
            return ServerFailure(message: e.response?.data['message'] ?? 'Unknown error occurred');
        }
      case DioExceptionType.cancel:
        return const ServerFailure(message: 'Request cancelled');
      case DioExceptionType.unknown:
        if (e.error.toString().contains('SocketException')) {
          return const ServerFailure(message: 'No internet connection');
        }
        return const ServerFailure(message: 'Unknown error occurred');
      default:
        return const ServerFailure(message: 'Unknown error occurred');
    }
  }

  // update headers token
  void updateHeaders(String token) {
    _dio.options.headers['token'] = 'Bearer $token';
  }

  // remove headers token
  void removeHeaders() {
    _dio.options.headers.remove('token');
  }
}
