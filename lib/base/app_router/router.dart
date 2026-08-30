import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_ca/base/app_router/routes_constants.dart';
import 'package:flutter_riverpod_ca/features/auth/presentation/controllers/auth_view_model.dart';
import 'package:flutter_riverpod_ca/features/auth/presentation/pages/login_page.dart';
import 'package:flutter_riverpod_ca/features/index/presentation/pages/index.dart';
import 'package:go_router/go_router.dart';

List<GoRoute> getAppRoutes(Ref ref) {
  final authState = ref.watch(authViewModelProvider);
  return [
    GoRoute(
      path: RoutesConstants.init,
      name: 'initial',
      redirect: (context, state) => authState.isLogin ? RoutesConstants.index : RoutesConstants.login,
    ),
    GoRoute(path: RoutesConstants.login, builder: (context, state) => const LoginPage()),
    GoRoute(path: RoutesConstants.index, builder: (context, state) => const Index()),
  ];
}
