import 'package:flutter/material.dart';
import 'package:flutter_design_1/utils/sidemenu.dart';

// import 'message.dart';

class FeedsPage extends StatelessWidget {
  const FeedsPage({Key key}) : super(key: key);

  void _clickShare(){
    print('This is a share operation');
  }

  void _clickComment(){
    print('This is a comment operation');
  }

  void _clickLike(){
    print('This is a like operation');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerOnly(),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Feeds',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Times New Roman',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: ListView.builder(
            // scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext builder, int index) {
              return Card(
                elevation: 10.0,
                clipBehavior: Clip.antiAlias,
                color: Colors.green,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset("images/feed$index.jpg", fit: BoxFit.fill),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FlatButton(
                            child: Icon(
                              Icons.share,
                              color: Colors.white,
                            ),
                            onPressed: _clickShare,
                          ),
                          FlatButton(
                            child: Icon(
                              Icons.comment,
                              color: Colors.white,
                            ),
                            onPressed: _clickComment,
                          ),
                          FlatButton(
                            child: Icon(
                              Icons.thumb_up,
                              color: Colors.white,
                            ),
                            onPressed: _clickLike,
                          ),
                        ],
                      ),
                    ),
                  ]
                ),
              );
            },
          ),
        )
      ),
    );
  }
}