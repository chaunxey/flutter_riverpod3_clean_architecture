import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_ca/features/update/domain/entities/check_update_result.dart';
import 'package:flutter_riverpod_ca/features/update/presentation/controllers/app_version_state.dart';
import 'package:flutter_riverpod_ca/features/update/presentation/controllers/app_version_view_model.dart';
import 'package:flutter_riverpod_ca/features/update/presentation/dialog/app_update_dialog.dart';

class CheckForUpdateWidget extends ConsumerWidget {
  /// The child widget
  final Widget child;

  /// Whether to automatically prompt for updates
  final bool autoPrompt;

  const CheckForUpdateWidget({super.key, required this.child, this.autoPrompt = true});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AppVersionState>(appVersionViewModelProvider, (_, state) {
      if (autoPrompt &&
          (state.checkUpdateResult == CheckUpdateResult.updateAvailable ||
              state.checkUpdateResult == CheckUpdateResult.criticalUpdateRequired)) {
        _showUpdateDialog(context, ref, state.checkUpdateResult);
      }
    });
    return child;
  }

  void _showUpdateDialog(BuildContext context, WidgetRef ref, CheckUpdateResult result) async {
    final viewModel = ref.watch(appVersionViewModelProvider.notifier);
    final appVersionEntity = await viewModel.getAppVersionEntity();
    debugPrint('showUpdateDialog: $appVersionEntity');

    /// 检查更新
    if (appVersionEntity == null || !context.mounted) return;
    final isCritical = result == CheckUpdateResult.criticalUpdateRequired;
    showDialog(
      context: context,
      barrierDismissible: !isCritical,
      builder: (context) => AppUpdateDialog(appVersionEntity: appVersionEntity, isCritical: isCritical),
    );
  }
}
