import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../controllers/contact_form_controller.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';
import '../widgets/custom_form_button.dart';
import '../widgets/custom_text_form_field.dart';

class ContactForm extends StatelessWidget {
  ContactForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContactFormController>(
        init: ContactFormController(),
        builder: (_) {
          return Container(
            width: double.infinity,
            color: AppColors.greenColor,
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _.formKey,
              child: Column(
                children: [
                  CustomTextFormField(
                    controller: _.nameController,
                    hintText: 'Name',
                    fieldType: Constants.nameField,
                  ),
                  CustomTextFormField(
                    controller: _.emailController,
                    hintText: 'Email',
                    textInputType: TextInputType.emailAddress,
                    fieldType: Constants.emailField,
                  ),
                  CustomTextFormField(
                    controller: _.subjectController,
                    hintText: 'Subject',
                    fieldType: Constants.subjectField,
                  ),
                  CustomTextFormField(
                    controller: _.messageController,
                    hintText: 'Message',
                    maxLines: 10,
                    textInputType: TextInputType.multiline,
                    fieldType: Constants.messageField,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomFormButton(onTap: () {
                    _.sendEmail(_.formKey, context);
                  }),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
