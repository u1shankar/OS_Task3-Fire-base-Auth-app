import 'auth.dart';
import 'package:authentication_with_firebase/pages/home.dart';
import 'package:authentication_with_firebase/pages/login.dart';
import 'package:flutter/material.dart';

class Widgettree extends StatefulWidget {
  const Widgettree({Key? key}) : super(key: key);

  @override
  State<Widgettree> createState() => _WidgettreeState();
}

class _WidgettreeState extends State<Widgettree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Homepage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
