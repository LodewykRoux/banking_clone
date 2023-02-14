import 'package:flutter/material.dart';

class ErrorSnackbar extends SnackBar {
  ErrorSnackbar(
    String message, {
    Key? key,
  }) : super(
          key: key,
          content: Text(message),
          backgroundColor: Colors.red,
          behavior: SnackBarBehavior.floating,
        );
}
