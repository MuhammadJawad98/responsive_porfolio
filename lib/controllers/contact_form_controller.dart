import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../services/api_calling.dart';
import '../utils/common_functions.dart';

class ContactFormController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final subjectController = TextEditingController();
  final messageController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    nameController.dispose();
    emailController.dispose();
    subjectController.dispose();
    messageController.dispose();
    super.dispose();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future<void> sendEmail(context) async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      var name = nameController.text;
      var email = emailController.text;
      var subject = subjectController.text;
      var message = messageController.text;
      var params = {
        'user_name': name,
        'user_email': email,
        'user_subject': subject,
        'user_message': message,
        'to_email':'rana.jawad98@gmail.com',
      };
      var result = await Api.post(params: params);
      if (result != null) {
        showAlertDialogue(
            context: context, title: 'Email', text: 'Email Send successfully');
        nameController.clear();
        emailController.clear();
        subjectController.clear();
        messageController.clear();
      } else {
        showAlertDialogue(
            context: context, title: 'Alert', text: 'Something went wrong');
      }
    }
  }
}
