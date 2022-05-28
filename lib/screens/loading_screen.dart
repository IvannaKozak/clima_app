import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:clima_app/services/location.dart';
import 'package:permission_handler/permission_handler.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    Map<Permission, PermissionStatus> status = await [
      Permission.location,
    ].request();
    var my_location = Location();
    my_location.getCurrentLocation();
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
