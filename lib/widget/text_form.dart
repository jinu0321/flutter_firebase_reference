import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget textForm(TextEditingController controller) {
  return SizedBox(
    width: Get.width * 0.5,
    height: Get.height * 0.1,
    child: Center(
      child: TextField(
        controller: controller,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          isDense: true,
        ),
      ),
    ),
  );
}
