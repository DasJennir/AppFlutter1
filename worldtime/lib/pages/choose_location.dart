import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}



class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;

  @override
  void initState() {
    super.initState();
    print('initState function ran1');
  }

  @override
  Widget build(BuildContext context) {
    print('initState function ran2');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('WorldTime - Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(onPressed: (){
        setState(() {
          counter += 1;
          });
        },
        child: Text( 'THE COUNTER IS $counter',),
      ),
    );
  }
}
