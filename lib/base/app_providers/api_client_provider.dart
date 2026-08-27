import 'package:flutter_riverpod_ca/base/app_dio/api_client.dart';
import 'package:flutter_riverpod_ca/base/app_providers/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_client_provider.g.dart';

@Riverpod(keepAlive: true)
ApiClient apiClient(Ref ref) {
  final dio = ref.watch(dioProvider);
  return ApiClient(dio);
}