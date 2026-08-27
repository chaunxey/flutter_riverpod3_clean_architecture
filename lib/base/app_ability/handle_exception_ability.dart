import 'package:flutter_riverpod_ca/base/app_error/exception.dart';

mixin ApiClientAbility {
  // Helper method to handle exceptions
  Exception handleException(Exception e) {
    if (e is NetworkException || e is ServerException || e is UnauthorizedException || e is BadRequestException) {
      return e;
    }
    return ServerException(message: e.toString());
  }
}
