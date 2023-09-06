import 'package:flutter/material.dart';

import '../../../../extensions/extensions.dart';

void showErrorDialog(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext alertDialogContext) {
        var textStyles = Theme.of(context).extension<AppTextStyles>()!;

        return AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          title: const Text(
            'translation.pleaseTryAgainLater',
            textAlign: TextAlign.center,
          ),
          titleTextStyle: textStyles.h4,
          actions: [
            SizedBox(
              width: double.infinity,
              child: GestureDetector(
                onTap: () async {
                  Navigator.of(alertDialogContext, rootNavigator: true).pop();
                },
                child: Container(
                  color: Colors.transparent,
                  child: Text(
                    'OK',
                    style: textStyles.button2.copyWith(
                      color: const Color(0xff007BFE),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
          actionsPadding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: 16.0,
          ),
          insetPadding: const EdgeInsets.symmetric(horizontal: 55.0),
        );
      });
}
