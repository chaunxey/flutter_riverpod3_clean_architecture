import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_ca/features/update/domain/entities/app_version_entity.dart';
import 'package:flutter_riverpod_ca/features/update/presentation/controllers/app_version_view_model.dart';

class AppUpdateDialog extends ConsumerWidget {
  /// param appVersionEntity
  final AppVersionEntity appVersionEntity;

  /// whether the update is critical
  final bool isCritical;

  const AppUpdateDialog({super.key, required this.appVersionEntity, this.isCritical = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final viewModel = ref.watch(appVersionViewModelProvider.notifier);
    return PopScope(
      canPop: !isCritical,
      child: AlertDialog(
        title: Text(isCritical ? 'Required Update' : 'Update Available'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                isCritical
                    ? 'A critical update (version ${appVersionEntity.versionName}) is required to continue using this app.'
                    : 'A new version (${appVersionEntity.versionName}) is available.',
                style: theme.textTheme.bodyLarge,
              ),
              if (appVersionEntity.updateContent != null) ...[
                const SizedBox(height: 16),
                Text('What\'s new:', style: theme.textTheme.titleSmall),
                const SizedBox(height: 4),
                Text(appVersionEntity.updateContent!),
              ],
            ],
          ),
        ),
        actions: [
          if (!isCritical) TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Later')),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
              viewModel.openUpdateUrl();
            },
            child: Text(isCritical ? 'Update Now' : 'Update'),
          ),
        ],
      ),
    );
  }
}
