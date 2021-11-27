import 'package:firebase_reference/widget/fr_app_bar.dart';
import 'package:firebase_reference/widget/fr_button.dart';
import 'package:firebase_reference/widget/text_form.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class EmailAuthPage extends StatefulWidget {
  const EmailAuthPage({Key? key}) : super(key: key);

  @override
  _EmailAuthPageState createState() => _EmailAuthPageState();
}

class _EmailAuthPageState extends State<EmailAuthPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: frAppBar('email/password', true),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              textForm(emailController),
              textForm(passwordController),
              submitButton(),
            ],
          ),
        ));
  }

  Widget submitButton() {
    return FrButton(name: '로그인', callBack: () {
      String email = emailController.text;
      String password = passwordController.text;

      if (email.isEmpty || password.isEmpty) {
        Fluttertoast.showToast(msg: '이메일과 패스워드를 입력해주세요.');
        return;
      }


    });
  }
}
