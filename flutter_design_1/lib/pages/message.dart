import 'package:flutter/material.dart';
import 'package:flutter_design_1/utils/sidemenu.dart';



class MessagePage extends StatefulWidget {
  MessagePage({Key key}) : super(key: key);

  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {

  List<String> messageTitle = [
    'Canada Embassy',
    'Switzerland Embassy',
    'Germany Embassy',
    'UK Embassy',
    'Spain Embassy',
    'France Embassy',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerOnly(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Messages',
          style: TextStyle(
            fontFamily: 'Arial',
            fontSize: 20.0,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(color: Colors.green,),
            itemCount: messageTitle.length,
            itemBuilder: (BuildContext context, int index){
              return ListTile(
                title: Text(messageTitle[index]),
                subtitle: Text('This is a subtitle'),
                isThreeLine: true,
                leading: CircleAvatar(
                  child: Text('$index'),
                  backgroundColor: Colors.green,
                ),
                trailing: Text('5'),
              );
            },
          ),
        ),
      ),
    );
  }
}