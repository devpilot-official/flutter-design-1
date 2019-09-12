// import 'dart:ui' as prefix0;
import 'package:flutter/material.dart';
import 'feeds.dart';
import 'register.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        Navigator.pop(context);
      },
      child: Scaffold(
        body: SafeArea(
          child: LoginForm(),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 90.0, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('images/logo.png'),
              ),
              SizedBox(
                width: 100.0,
                child: Divider(
                  height: 50.0,
                  color: Colors.green,
                ),
              ),
              ListTile(
                title: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email'
                  ),
                ),
              ),
              ListTile(
                title: TextField(
                  decoration: InputDecoration(
                    labelText: 'Password'
                  ),
                ),
              ),
              ListTile(
                title: RaisedButton(
                  color: Colors.green,
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FeedsPage()),);
                  },
                ),
              ),
              ListTile(
                title: FlatButton(
                  child: Text(
                    'Click here to REGISTER',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()),);
                  },
                ),
              ),
            ],
          ),
        )
    );
  }
}