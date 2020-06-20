import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Beyond Lines',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
            fontFamily: 'Signi',


          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child:RaisedButton.icon(
          onPressed: () {
            print('Hello There');
          },
          icon: Icon(
            Icons.accessibility
          ),
          label: Text('T Pose Boi'),
          color: Colors.blueAccent,
        ),
      ),
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('You Have Clicked Me !!!');
        },
        child: Text('Click'),
        backgroundColor: Colors.blueAccent[800],
      ),
    );
  }
}
