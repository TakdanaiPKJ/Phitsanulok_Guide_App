import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../model/listpage.dart';
import 'detailpage.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  final place = listplace;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
      ),
      body: FlutterMap(
        options: MapOptions(center: LatLng(16.8239, 100.2622), zoom: 15),
        layers: [
          TileLayerOptions(
            urlTemplate:
                'https://api.mapbox.com/styles/v1/prxmz/clgvs4ush008701qudtc00tmc/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoicHJ4bXoiLCJhIjoiY2xlYmIxaXd0MTdnejN2cjFxd2huZHQ0MiJ9.M_UA7jSW68pQGvr2Mbz8DQ',
            additionalOptions: const {
              'AccessToken':
                  'pk.eyJ1IjoicHJ4bXoiLCJhIjoiY2xlYmIxaXd0MTdnejN2cjFxd2huZHQ0MiJ9.M_UA7jSW68pQGvr2Mbz8DQ',
              'id': 'mapbox://styles/prxmz/clgvs4ush008701qudtc00tmc'
            },
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  point: LatLng(listplace[0].latt, 100.261878),
                  builder: (context) => IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                DetailPage(place: listplace[0]),
                          ));
                          //Navigator.pushNamed(context, 'watyai');
                        },
                        icon: const Icon(Icons.circle),
                        color: Colors.red,
                        iconSize: 10.0,
                      ))
            ],
          )
        ],
      ),
    );
  }
}
