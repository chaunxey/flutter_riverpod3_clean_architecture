import 'package:flutter/material.dart';
import 'package:flutter_riverpod_ca/base/app_router/router.dart';
import 'package:flutter_riverpod_ca/base/app_router/routes_constants.dart';
import 'package:flutter_riverpod_ca/features/auth/presentation/controllers/auth_view_model.dart';
import 'package:flutter_riverpod_ca/features/update/presentation/widgets/check_for_update_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'router_provider.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(Ref ref) => GoRouter(
  initialLocation: RoutesConstants.init,
  debugLogDiagnostics: true,
  redirect: (context, state) {
    final authState = ref.watch(authViewModelProvider);
    final isLoggedIn = authState.isLogin;

    // Check if the user is going to the login page
    final isGoingToLogin = state.matchedLocation == RoutesConstants.login;

    // Check if the user is going to the register page
    final isGoingToRegister = state.matchedLocation == RoutesConstants.register;

    // If not logged in and not going to login or register, redirect to login
    debugPrint('isLoggedIn: $isLoggedIn, isGoingToLogin: $isGoingToLogin, isGoingToRegister: $isGoingToRegister');
    if (!isLoggedIn && !isGoingToLogin && !isGoingToRegister) {
      return RoutesConstants.login;
    }

    debugPrint('isLoggedIn: $isLoggedIn, isGoingToLogin: $isGoingToLogin, isGoingToRegister: $isGoingToRegister');
    // If logged in and going to login, redirect to home
    if (isLoggedIn && (isGoingToLogin || isGoingToRegister)) {
      return RoutesConstants.index;
    }

    return null; // No redirect
  },
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return CheckForUpdateWidget(autoPrompt: true, child: child);
      },
      routes: getAppRoutes(ref),
    ),
  ],
);
