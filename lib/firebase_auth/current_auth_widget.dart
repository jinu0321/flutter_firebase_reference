import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_reference/widget/loading_view.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthStatus {
  bool signedIn;
  String uid;
  AuthStatus(this.signedIn, {this.uid = 'none'});
}

class CurrentAuthWidget extends StatefulWidget {
  const CurrentAuthWidget({Key? key}) : super(key: key);

  @override
  _CurrentAuthWidgetState createState() => _CurrentAuthWidgetState();
}

class _CurrentAuthWidgetState extends State<CurrentAuthWidget> {
  Future<AuthStatus> tryLoad() async {
    bool signedIn = await FirebaseAuth.instance.currentUser != null;
    if (!signedIn) return AuthStatus(signedIn);
    else return AuthStatus(signedIn, uid: FirebaseAuth.instance.currentUser!.uid);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: tryLoad(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData) {
          return Text('uid: ${(snapshot.data as AuthStatus).uid}');
        } else if (snapshot.hasError) {
          Fluttertoast.showToast(msg: snapshot.error.toString());
          return const Text('로드에 실패했습니다.');
        } else {
          return LoadingView();
        }
      },
    );
  }
}
