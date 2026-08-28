import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_ca/base/app_router/routes_constants.dart';
import 'package:flutter_riverpod_ca/features/auth/presentation/controllers/auth_view_model.dart';
import 'package:flutter_riverpod_ca/features/auth/presentation/pages/login_page.dart';
import 'package:flutter_riverpod_ca/features/update/presentation/controllers/app_version_view_model.dart';
import 'package:go_router/go_router.dart';

List<GoRoute> getAppRoutes(Ref ref) {
  final authState = ref.watch(authViewModelProvider);
  return [
    GoRoute(
      path: RoutesConstants.init,
      name: 'initial',
      redirect: (context, state) => authState.isLogin ? RoutesConstants.home : RoutesConstants.login,
    ),
    GoRoute(path: RoutesConstants.login, builder: (context, state) => const LoginPage()),
    GoRoute(path: RoutesConstants.home, builder: (context, state) => const FakeHomePage()),
  ];
}

class FakeHomePage extends ConsumerWidget {
  const FakeHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authViewModelProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('isLogin: ${authState.user}'),
              InkWell(
                borderRadius: BorderRadius.circular(8.0),
                onTap: () {
                  ref.read(appVersionViewModelProvider.notifier).checkForUpdates();
                },
                child: const Text('Check for updates'),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(8.0),
                onTap: () {
                  ref.read(authViewModelProvider.notifier).logout();
                },
                child: const Text('logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
