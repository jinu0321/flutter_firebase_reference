import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_reference/widget/loading_view.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CurrentAuthWidget extends StatefulWidget {
  const CurrentAuthWidget({Key? key}) : super(key: key);

  @override
  _CurrentAuthWidgetState createState() => _CurrentAuthWidgetState();
}

class _CurrentAuthWidgetState extends State<CurrentAuthWidget> {
  String uid = 'loading';

  Future<void> load() async {
    setState(() {
      uid = '로딩 중...';
    });

    if (FirebaseAuth.instance.currentUser == null) {
      setState(() {
        uid = 'Auth 인증 되어있지 않음';
      });
      return;
    }

    User user = FirebaseAuth.instance.currentUser!;
    await user.reload();

    setState(() {
      uid = 'uid: ${user.uid}';
    });
    return;
  }

  @override
  void initState() {
    super.initState();
    load();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(uid),
        IconButton(
          onPressed: () => load(),
          icon: Icon(Icons.refresh, color: Colors.black),
        )
      ],
    );
  }
}
