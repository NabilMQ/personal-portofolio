import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
import 'package:url_launcher/url_launcher.dart';

void openLink(BuildContext context, String link) async {
  if (!await launchUrl(Uri.parse(link))) {
    if (context.mounted) {
      toastification.dismissAll();
      toastification.show(
        dismissDirection: DismissDirection.startToEnd,
        style: ToastificationStyle.fillColored,
        type: ToastificationType.error,
        icon: Icon(
          Icons.error_outline_rounded
        ),
        autoCloseDuration: Duration(seconds: 3),
        dragToClose: true,
        description: Text(
          "Could not go to the new page\nPlease try again later",
        ),
      );
    }
  }
}