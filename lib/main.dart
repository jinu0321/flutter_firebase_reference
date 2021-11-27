import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'menu_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'FlutterFire Reference',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: SplashPage(),
    );
  }
}

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future<void> initAsync() async {
    await Firebase.initializeApp();
    Get.to(() => MenuPage());
  }

  @override
  void initState() {
    super.initState();
    initAsync();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Firebase Reference',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            )
          ),
        ),
      )
    );
  }
}
