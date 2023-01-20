import 'package:flutter/material.dart';

class SuccessSnackbar extends SnackBar {
  SuccessSnackbar(
    String message, {
    Key? key,
  }) : super(
            key: key,
            content: Text(message),
            backgroundColor: Colors.green,
            behavior: SnackBarBehavior.floating);
}
