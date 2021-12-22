import 'package:assignment1/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zap surveys'),
      ),
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text('Please provide your details',
                    style: TextStyle(fontSize: 18)),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(7),
                  filled: true,
                  labelText: 'Username',
                  labelStyle: TextStyle(fontSize: 18)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(7),
                  filled: true,
                  labelText: 'Email',
                  labelStyle: TextStyle(fontSize: 18)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(7),
                  filled: true,
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 18)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(7),
                  filled: true,
                  labelText: 'Confirm password',
                  labelStyle: TextStyle(fontSize: 18)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: 'Successfully signed up',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.TOP,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
                child: Text('Sign up', style: TextStyle(fontSize: 18))),
          ),
        ],
      )),
    );
  }
}
