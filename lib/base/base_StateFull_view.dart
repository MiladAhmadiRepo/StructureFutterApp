import 'package:boomerang/helper/PopUp/sweetalert.dart';
import 'package:boomerang/ui/base/baseInterface.dart';
import 'package:flutter/material.dart';

abstract class BaseViewState<T extends StatefulWidget> extends State<T>
    implements BaseMVPView {
  @override
  showErrorWithConfirm(message, var onConfirm) {
    Future.delayed(const Duration(milliseconds: 200), () {
      SweetAlert.show(context,
          title: "asd",
          subtitle: message,
          confirmButtonText: "asd  !",
          style: SweetAlertStyle.error,
          showCancelButton: false, onPress: (bool isConfirm) {
        onConfirm(isConfirm);
        return false;
      });
    });
  }

  @override
  englishShowErrorWithConfirm(message, var onConfirm) {
    Future.delayed(const Duration(milliseconds: 200), () {
      SweetAlert.show(context,
          title: "Error",
          subtitle: message,
          confirmButtonText: "OK!",
          style: SweetAlertStyle.error,
          showCancelButton: false, onPress: (bool isConfirm) {
        onConfirm(isConfirm);
        return false;
      });
    });
  }

  @override
  showWarningWithConfirm(message, var onConfirm, confirmText) {
    Future.delayed(const Duration(milliseconds: 200), () {
      SweetAlert.show(context,
          title: "asd",
          subtitle: message,
          confirmButtonText: confirmText,
          style: SweetAlertStyle.error,
          showCancelButton: false, onPress: (bool isConfirm) {
        onConfirm(isConfirm);
        return false;
      });
    });
  }

  @override
  void showConfirm(
      message, Function(bool) onConfirm, title, confirmText, cancelText) {
    Future.delayed(const Duration(milliseconds: 200), () {
      SweetAlert.show(context,
          title: title,
          subtitle: message,
          confirmButtonText: confirmText,
          cancelButtonText: cancelText,
          style: SweetAlertStyle.confirm,
          showCancelButton: true, onPress: (bool isConfirm) {
        if (isConfirm) {
          Future.delayed(const Duration(milliseconds: 10), () {
            onConfirm(isConfirm);
          });
        }
        return true;
      });
    });
  }

  @override
  void setWidgetState() {
    setState(() {});
  }

  @override
  void screenPushReplace(route, args) {
    Navigator.pushReplacementNamed(context, route);
  }


  @override
  void screenPopAndPushUntil(route, belowRoute, args) {
    Navigator.pushNamedAndRemoveUntil(
        context, route, ModalRoute.withName(belowRoute),
        arguments: args);
  }

  @override
  Future<T> screenPush<T extends Object>(
    String route, {
    Object args,
  }) {
    return Navigator.of(context).pushNamed(route, arguments: args);
  }

  @override
  void screenPop() {
    Navigator.pop(context);
  }
}
