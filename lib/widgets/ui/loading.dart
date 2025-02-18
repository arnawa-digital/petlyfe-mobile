import 'package:flutter/material.dart';

class LoadingDialog {
  static void show(BuildContext context) {
    // Show loading alert
    Widget loadingDialog = Padding(
      padding: const EdgeInsets.symmetric(vertical: 330, horizontal: 130),
      child: AlertDialog(
        backgroundColor: Colors.white,
        insetPadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CircularProgressIndicator()],
        ),
      ),
    );

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return loadingDialog;
      },
    );
  }

  static void hide(BuildContext context) {
    Navigator.of(context).pop(); // Close the dialog
  }
}
