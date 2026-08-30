import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_ca/base/app_providers/router_provider.dart';
import 'package:flutter_riverpod_ca/base/app_providers/theme_mode_provider.dart';
import 'package:flutter_riverpod_ca/base/app_theme/app_theme.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // router
    final router = ref.watch(routerProvider);
    // themeMode
    final themeMode = ref.watch(themeModeProvider);

    return MaterialApp.router(
      title: 'Flutter Riverpod CA',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate, // 添加 Material 组件的 Internationalized localizations
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', 'US'), Locale('zh', 'CN')],
    );
  }
}
