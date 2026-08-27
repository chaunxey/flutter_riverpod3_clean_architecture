enum CheckUpdateResult {
  // The app is up to date 该应用已是最新版本
  upToDate,
  // Update available 更新可用
  updateAvailable,
  // A critical update is available 有一项重要更新可用
  criticalUpdateRequired,
  // Check failed 检查失败
  checkFailed,
}
