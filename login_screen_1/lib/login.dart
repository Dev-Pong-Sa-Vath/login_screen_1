import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
           Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            child: Text('Sigin'),
          ),
           Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'User Name'),
            ),
          ),
          Container(padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextField(
            obscureText: true,
            controller: passwordController,
            decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Password'),
          ),
          ),
          FlatButton(
            onPressed: () {
              //Action
            },
            textColor: Colors.blue,
            child: Text('Forgot Password'),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('Login'),
              onPressed: () {
                print(nameController.text);
                print(passwordController.text);
              },
            ),
          ),
          Container(
            child: Row(children: <Widget>[Text('Dose not have account?'),
            FlatButton(onPressed: () {
              //Action signup screen
            },textColor: Colors.blue, child: Text('Sign in',style: TextStyle(fontSize: 20),))
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            ),
          )
      ]),
    ));
  }
}
