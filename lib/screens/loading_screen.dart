import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getData() async{
    http.Response response = await http.get('http://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=fcfc25064d308ce6f8df58737411a2f7');
    //print(response.body);
    if(response.statusCode == 200)
      {
        String data = response.body;
      }
    else{
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    //getLocation();
    getData();
    return Scaffold(
      // body: Center(
      //   child: RaisedButton(
      //     onPressed: () {
      //       //Get the current location
      //       getLocation();
      //     },
      //     child: Text('Get Location'),
      //   ),
      // ),
    );
  }
}
