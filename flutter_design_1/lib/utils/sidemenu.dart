import 'package:flutter/material.dart';
import 'package:flutter_design_1/pages/feeds.dart';
import 'package:flutter_design_1/pages/message.dart';

class DrawerOnly extends StatelessWidget {
  const DrawerOnly({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              // child: Text('Drawer Header'),
              accountName: Text('Muhammed Saifudeen Salaudeen'),
              accountEmail: Text('mr.salaudeen.official@gmail.com'),
              currentAccountPicture: GestureDetector(
                onTap: (){
                  print('You just touched me!');
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/logo.png'),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('images/homepage.jpeg'), fit: BoxFit.fill),
                color: Colors.green,
              ),
            ),
            ListTile(
              title: Text(
                'Feeds',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20.0
                ),
              ),
              trailing: Icon(
                Icons.list,
                color: Colors.green,
              ),
              onTap: () {
                // Navigator.pop(context);
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => FeedsPage()));
              },
            ),
            ListTile(
              title: Text('Messages'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => MessagePage()));
              },
            ),
          ],
        ),
      );
  }
}