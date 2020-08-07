abstract class BaseMVPView {
  void showErrorWithConfirm(message, Function(bool) onConfirm);

  void englishShowErrorWithConfirm(message, Function(bool) onConfirm);

  void showSuccessWithConfirm(message, Function(bool) onConfirm, confirmText);

  void showSuccess(message);

  void showError(message);

  void showConfirm(
      message, Function(bool) async, title, confirmText, cancelText);

  void dismissLoading(message);

  void showLoading();

  void screenPushReplace(route, args);

  void screenPop();

  bool screenCanPop();

  void screenPopAndPush(route, args);

  void screenRemoveAllPop(route, args);

  void screenPopAndPushUntil(route, belowRoute, args);

  Future<T> screenPush<T extends Object>(
    String route, {
    Object args,
  });

  void setWidgetState();

  void showWarningWithConfirm(message, Function(bool) onConfirm, confirmText);

  void showWarningWithConfirmAndCancel(
      message, Function(bool) onConfirm, confirmText, cancelText);
}

abstract class BaseMVPPresenter {}
