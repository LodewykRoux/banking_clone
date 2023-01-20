import 'package:banking_clone/widget/snackbar/error_snackbar.dart';
import 'package:banking_clone/widget/snackbar/success_snackbar.dart';
import 'package:flutter/material.dart';

class ScaffoldMessengerService {
  static final instance = ScaffoldMessengerService._();

  ScaffoldMessengerService._();

  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  GlobalKey<ScaffoldMessengerState> getKey() => _scaffoldMessengerKey;

  void displayError(String message) {
    _scaffoldMessengerKey.currentState
        ?.removeCurrentSnackBar(reason: SnackBarClosedReason.dismiss);
    _scaffoldMessengerKey.currentState?.showSnackBar(ErrorSnackbar(message));
  }

  void displaySuccess(String message) {
    _scaffoldMessengerKey.currentState
        ?.removeCurrentSnackBar(reason: SnackBarClosedReason.dismiss);
    _scaffoldMessengerKey.currentState?.showSnackBar(SuccessSnackbar(message));
  }
}
