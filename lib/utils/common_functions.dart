import 'package:flutter/material.dart';

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
