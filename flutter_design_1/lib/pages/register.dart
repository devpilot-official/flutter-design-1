import 'package:flutter/material.dart';
import 'login.dart';



class RegisterPage extends StatelessWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        Navigator.pop(context);
      },
      child: Scaffold(
        body: SafeArea(
          child: RegisterForm(),
        ),
      )
    );
  }
}

class RegisterForm extends StatefulWidget {
  RegisterForm({Key key}) : super(key: key);

  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
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
                    labelText: 'Firstname'
                  ),
                ),
              ),
              ListTile(
                title: TextField(
                  decoration: InputDecoration(
                    labelText: 'Lastname'
                  ),
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
                title: TextField(
                  decoration: InputDecoration(
                    labelText: 'ConfirmPassword'
                  ),
                ),
              ),
              ListTile(
                title: RaisedButton(
                  color: Colors.green,
                  child: Text(
                    'REGISTER',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  onPressed: (){
                    
                  },
                ),
              ),
              ListTile(
                title: FlatButton(
                  child: Text(
                    'Click here to LOGIN',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),);
                  },
                ),
              ),
            ],
          ),
        )
    );
  }
}