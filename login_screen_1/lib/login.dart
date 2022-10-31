import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(10),
      child: ListView(children: <Widget>[
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          child: Text(
            'Login',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 30),
          ),
        ),
        Container(padding: EdgeInsets.fromLTRB(10, 10, 10, 0),child: TextField(obscureText: true,),)
      ]),
    ));
  }
}
