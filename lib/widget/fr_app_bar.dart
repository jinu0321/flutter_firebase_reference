import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar frAppBar(String title, bool goBackButton) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 4,
    title: Text(title),
    leading: returnButton(goBackButton),
  );
}

IconButton? returnButton(bool exist) {
  return exist
      ? IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back, color: Colors.black))
      : null;
}
