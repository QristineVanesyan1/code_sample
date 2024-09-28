import 'package:code_sample/configs/configs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDialogs {
  static Future<dynamic> error(BuildContext context,
          {String? errorMessage}) async =>
      showGeneralDialog(
        context: context,
        barrierColor: AppColors.textPrimary.withOpacity(0.9),
        pageBuilder: (
          BuildContext buildContext,
          Animation animation,
          Animation secondaryAnimation,
        ) {
          return CupertinoTheme(
            data: CupertinoThemeData(
                brightness: Theme.of(context).brightness,
                barBackgroundColor: CupertinoColors.darkBackgroundGray),
            child: CupertinoAlertDialog(
              title: const Text(
                "AppTexts.sww",
              ),
              content: Text(errorMessage ?? "Something went wrong "),
              actions: <Widget>[
                CupertinoDialogAction(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'OK',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          );
        },
      );
}
