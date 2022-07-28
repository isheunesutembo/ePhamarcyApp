import 'package:ephamarcy/pages/signin.dart';
import 'package:ephamarcy/services/authservice.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            ElevatedButton(
                onPressed: (() {
                  authService.signOut();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => SignIn()),
                      (route) => false);
                }),
                child: Text("Sign Out"))
          ],
        ),
        body: Container(
          child: Text("Firebase Auth"),
        ));
  }
}
