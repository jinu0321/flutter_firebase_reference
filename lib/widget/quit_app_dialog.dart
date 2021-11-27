import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> quitAppDialog() async {
  showDialog(
      context: Get.context!,
      builder: (context) => AlertDialog(
            content: const Text('앱을 종료하시겠습니까?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => exit(0),
                child: const Text('종료'),
              ),
              TextButton(
                onPressed: () => Get.back(),
                child: const Text('종료안함!'),
              )
            ],
          ));
}
