import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  String location; //your location
  String time; //your time
  String flag; //the flag displayed
  String url; //get your location

  WorldTime({ this.location, this.flag, this.url});

  Future<void> getTime() async {

    try{
      //make request
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      //print(data);
      //get properties
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(0,3);
      //String client = data['client_ip'];
      //print(datetime);
      //print(offset);
      //print(client);

      //create datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      //set the time property
      time = DateFormat.jm().format(now);


    }
    catch (e) {

      time = ('You have imputed a wrong timezone, please try again.');
    }


  }

}


