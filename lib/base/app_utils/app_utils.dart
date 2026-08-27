import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class AppUtils {
  //network connectivity check
  static Future<bool> isConnected() async {
    try {
      final connectivityResult = await Connectivity().checkConnectivity();
      return !connectivityResult.contains(ConnectivityResult.none);
    } catch (e) {
      return false;
    }
  }

  // Email validation
  static bool isValidEmail(String email) {
    final emailRegExp = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
    return emailRegExp.hasMatch(email);
  }

  // Password validation (at least 8 chars, 1 uppercase, 1 lowercase, 1 number)
  static bool isValidPassword(String password) {
    final passwordRegExp = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$');
    return passwordRegExp.hasMatch(password);
  }

  // Phone number validation (simple)
  static bool isValidPhoneNumber(String phoneNumber) {
    final phoneRegExp = RegExp(r'^\+?[0-9]{10,15}$');
    return phoneRegExp.hasMatch(phoneNumber);
  }

  // Show a snackbar
  static void showSnackBar(
    BuildContext context, {
    required String message,
    Duration? duration,
    Color? backgroundColor,
    SnackBarAction? action,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: duration ?? const Duration(seconds: 2),
        backgroundColor: backgroundColor,
        action: action,
      ),
    );
  }
}
