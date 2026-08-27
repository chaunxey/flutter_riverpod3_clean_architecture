import 'package:flutter_riverpod_ca/base/app_error/exception.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageService {
  final FlutterSecureStorage _secureStorage;

  SecureStorageService(this._secureStorage);

  // Default constructor
  factory SecureStorageService.create() {
    return SecureStorageService(
      const FlutterSecureStorage(
        aOptions: AndroidOptions(),// 直接使用默认配置即可，v10+ 默认已采用最新安全加密方案
        iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
      ),
    );
  }

  // Write value
  Future<void> write({required String key, required String value}) async {
    try {
      await _secureStorage.write(key: key, value: value);
    } catch (e) {
      throw CacheException(message: 'Failed to write secure data: $e');
    }
  }

  // Read value
  Future<String?> read({required String key}) async {
    try {
      return await _secureStorage.read(key: key);
    } catch (e) {
      throw CacheException(message: 'Failed to read secure data: $e');
    }
  }

  // Delete value
  Future<void> delete({required String key}) async {
    try {
      await _secureStorage.delete(key: key);
    } catch (e) {
      throw CacheException(message: 'Failed to delete secure data: $e');
    }
  }

  // Delete all
  Future<void> deleteAll() async {
    try {
      await _secureStorage.deleteAll();
    } catch (e) {
      throw CacheException(message: 'Failed to delete all secure data: $e');
    }
  }

  // Check if key exists
  Future<bool> containsKey({required String key}) async {
    try {
      return await _secureStorage.containsKey(key: key);
    } catch (e) {
      throw CacheException(message: 'Failed to check secure key: $e');
    }
  }

  // Read all values
  Future<Map<String, String>> readAll() async {
    try {
      return await _secureStorage.readAll();
    } catch (e) {
      throw CacheException(message: 'Failed to read all secure data: $e');
    }
  }
}
