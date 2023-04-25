import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HOME'),
        ),
        body: FlutterMap(
          options: MapOptions(
            center: LatLng(0, 0),
            zoom: 10,
          ),
          children: const [
            //TileLayer(options: options, mapState: mapState, stream: stream)
          ],
        ));
  }
}
