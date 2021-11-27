import 'dart:ui';

import 'package:firebase_reference/common_value.dart';
import 'package:flutter/material.dart';

class FrButton extends StatelessWidget {
  final String name;
  final VoidCallback callBack;

  const FrButton({required this.name, required this.callBack, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: verticalPadding),
      child: GestureDetector(
          onTap: callBack,
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.deepOrange, width: 1),
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [0.5, 0.9],
                    colors: [Colors.white, Colors.yellow],
                  )),
              child: Text(name,
                  style: const TextStyle(fontSize: 16, color: Colors.black)))),
    );
  }
}
