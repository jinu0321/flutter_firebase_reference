import 'package:firebase_reference/common_value.dart';
import 'package:firebase_reference/firebase_auth/current_auth_widget.dart';
import 'package:firebase_reference/firebase_auth/email_auth_page.dart';
import 'package:firebase_reference/widget/fr_app_bar.dart';
import 'package:firebase_reference/widget/fr_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: frAppBar('Firebase Auth Page', true),
        body: SafeArea(
          child: Center(
              child: Padding(
            padding: commonPadding,
            child: Column(
              children: [
                CurrentAuthWidget(),
                FrButton(
                    name: 'email/password',
                    callBack: () => Get.to(() => EmailAuthPage()))
              ],
            ),
          )),
        ));
  }
}
