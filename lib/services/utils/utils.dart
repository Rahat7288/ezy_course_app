import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static void hideKeyboard() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  static void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  ///reusable custom snackBar required parameter context and text for snackBar
  ///default snack duration is 3 seconds
  static void customSnackBar({
    required context,
    required String snackText,
    SnackBarBehavior? snaackBarBehavior,
    SnackBarAction? snackBarAction,
    double? snackTextSize,
    Color? snackTextColor,
    Color? backgroundColor,
    int? snackDuration,
    Color? snackBackgroundColor,
  }) {
    final snack = SnackBar(
      backgroundColor: snackBackgroundColor ?? Colors.black12,
      behavior: snaackBarBehavior ?? SnackBarBehavior.fixed,
      elevation: 0,
      action: snackBarAction,
      content: Text(snackText),
      duration: Duration(seconds: snackDuration ?? 3),
    );
    ScaffoldMessenger.of(context).showSnackBar(snack);
  }
}
