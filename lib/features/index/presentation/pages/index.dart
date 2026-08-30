import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_ca/features/home/presentation/pages/home_page.dart';
import 'package:flutter_riverpod_ca/features/index/presentation/controllers/index_view_model.dart';
import 'package:flutter_riverpod_ca/features/profile/presentation/pages/profile_page.dart';
import 'package:flutter_riverpod_ca/features/store/presentation/pages/store_page.dart';

class Index extends ConsumerWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexState = ref.watch(indexViewModelProvider);
    return Scaffold(
      body: switch (indexState.bottomNavIndex) {
        0 => HomePage(),
        1 => StorePage(),
        2 => ProfilePage(),
        _ => HomePage(),
      },
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'), // 首页
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'), // 搜索
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'), // 个人
        ],
        selectedIndex: indexState.bottomNavIndex,
        onDestinationSelected: (index) => ref.read(indexViewModelProvider.notifier).updateIndex(index),
      ),
    );
  }
}
