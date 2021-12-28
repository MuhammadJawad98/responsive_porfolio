import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void showAlertDialogue({context, title, text}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(text),
        );
      });
}

void launchURL(url) async {
  if (!await launch(url)) throw 'Could not launch $url';
}

void closeDrawer(context) {
  Navigator.pop(context);
}
