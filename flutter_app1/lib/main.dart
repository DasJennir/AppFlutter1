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
        child: Icon(
          Icons.laptop_windows,
          color: Colors.white,
          size: 50,

        ),
      ),
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.blueAccent[800],
      ),
    );
  }
}
