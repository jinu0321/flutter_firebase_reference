import 'package:firebase_reference/firebase_auth/auth_page.dart';
import 'package:firebase_reference/common_value.dart';
import 'package:firebase_reference/widget/fr_app_bar.dart';
import 'package:firebase_reference/widget/fr_button.dart';
import 'package:firebase_reference/widget/quit_app_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        quitAppDialog();
        return false;
        },
      child: Scaffold(
        appBar: frAppBar('메인 메뉴', false),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: commonPadding,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  FrButton(name: 'Firebase Auth', callBack: () => Get.to(() => AuthPage()))
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}
