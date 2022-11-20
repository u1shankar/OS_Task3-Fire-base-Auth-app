import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:authentication_with_firebase/auth.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);

  final User? user = Auth().currentUser;
  Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _title() {
    return const Text("Firebase Authentication");
  }

  Widget _userid() {
    return Text("Login Successful!",style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold) );
  }

  Widget _signoutbutton() {
    return ElevatedButton(onPressed: signOut, child: const Text("Sign Out"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _userid(),
            Padding(padding: const EdgeInsets.all(20)),
            //Image.network("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vhv.rs%2Fviewpic%2FhTomowR_checkmark-svg-hd-png-download%2F&psig=AOvVaw15tJadFMFpq17lqqN-VZN8&ust=1669009587959000&source=images&cd=vfe&ved=0CBAQjRxqFwoTCJiJkK6HvPsCFQAAAAAdAAAAABAi"),
            //Image.asset("asserts/tick.png"),
            _signoutbutton()
          ],
        ),
      ),
    );
  }
}
