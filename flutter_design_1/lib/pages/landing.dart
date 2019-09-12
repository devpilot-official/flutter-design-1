import 'dart:ui' as prefix0;
import 'package:flutter/material.dart';

import 'login.dart';
import 'register.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          body: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/home.gif"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: BackdropFilter(
                  filter: prefix0.ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0), //Blur 1 - 10
                  child: Container(
                  decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: MyButtons()
            ),
          ),
        ],
      ),
    );
  }
}

class MyButtons extends StatefulWidget {
  MyButtons({Key key}) : super(key: key);

  _MyButtonsState createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Card(
          color: Colors.green,
          child: FlatButton(
            child: Text(
              'Login', 
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 3.0
              ),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ),
        Card(
          margin: EdgeInsets.fromLTRB(0, 10.0, 0, 30.0),
          color: Colors.white,
          child: FlatButton(
            child: Text(
              'Sign Up', 
              style: TextStyle(
                color: Colors.green,
                letterSpacing: 3.0
              ),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
            },
          ),
        ),
      ],
    );
  }
}