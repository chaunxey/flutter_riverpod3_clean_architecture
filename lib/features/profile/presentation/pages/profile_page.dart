import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_ca/features/auth/presentation/controllers/auth_view_model.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.read(authViewModelProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('User id: ${authState.user?.id}'),
            Text('User name: ${authState.user?.name}'),
            Text('User email: ${authState.user?.email}'),
            Text('User phone: ${authState.user?.phone}'),
            Text('User gender: ${authState.user?.gender}'),
            Text('User birthday: ${authState.user?.birthday}'),
            Text('User created at: ${authState.user?.createdAt}'),
            Text('User updated at: ${authState.user?.updatedAt}'),
          ],
        ),
      ),
    );
  }
}
