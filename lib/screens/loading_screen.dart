import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:async/async.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    print('init state');
    super.initState();
  }
  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(position);
  }
  
  @override
  void deactivate() {
    print('destroyed');
    super.deactivate();
  }
  @override
  Widget build(BuildContext context) {
    getLocation();
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
