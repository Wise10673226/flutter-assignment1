import 'package:assignment1/screen/Homepage.dart';
import 'package:assignment1/screen/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<Login> {
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
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Text(
                      'Welcome to zap surveys',
                      style: TextStyle(fontSize: 20),
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
                          labelText: 'Email',
                          filled: true,
                          labelStyle: TextStyle(fontSize: 20)),
                    ),
                  ),
                  //////
                  SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(7),
                          labelText: 'Password',
                          filled: true,
                          labelStyle: TextStyle(fontSize: 20)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Homepage()));
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Text('Dont have an account?'),
                  InkWell(
                    child: Text("Sign up here!",
                        style: TextStyle(fontSize: 18, color: Colors.red)),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                  )

                  //////
                ],
              )
            ],
          ),
        ));
  }
}
