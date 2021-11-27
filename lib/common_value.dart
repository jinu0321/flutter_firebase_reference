import 'package:flutter/material.dart';
import 'package:get/get.dart';

double get horizontalPadding => Get.width * 0.05;

double get verticalPadding => Get.height * 0.05;

EdgeInsets get commonPadding => EdgeInsets.symmetric(
    horizontal: horizontalPadding, vertical: verticalPadding);
