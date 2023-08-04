import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:line_icons/line_icons.dart';
import '../model/listmodel.dart';
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
        centerTitle: true,
        title: const Text('Home'),
        backgroundColor: const Color.fromRGBO(8, 61, 119, 1),
        shadowColor: Colors.transparent,
      ),
      body: FlutterMap(
        options: MapOptions(center: LatLng(16.8239, 100.2622), zoom: 15),
        layers: [
          TileLayerOptions(
            urlTemplate:
                'https://api.mapbox.com/styles/v1/prxmz/clebbhxgy000501pq0y4l0088/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoicHJ4bXoiLCJhIjoiY2xlYmIxaXd0MTdnejN2cjFxd2huZHQ0MiJ9.M_UA7jSW68pQGvr2Mbz8DQ',
            additionalOptions: const {
              'AccessToken':
                  'pk.eyJ1IjoicHJ4bXoiLCJhIjoiY2xlYmIxaXd0MTdnejN2cjFxd2huZHQ0MiJ9.M_UA7jSW68pQGvr2Mbz8DQ',
              'id': 'mapbox://styles/prxmz/clebbhxgy000501pq0y4l0088'
            },
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  point: LatLng(listplace[0].latt, listplace[0].lngg),
                  builder: (context) => IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailPage(
                              place: listplace[0],
                              placeindex: 0,
                            ),
                          ));
                          //Navigator.pushNamed(context, 'watyai');
                        },
                        icon: const Icon(LineIcons.mapPin),
                        color: Colors.red,
                        iconSize: 40.0,
                      )),
                Marker(
                  point: LatLng(16.8275, 100.2546),
                  builder: (context) => IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailPage(
                              place: listplace[0],
                              placeindex: 0,
                            ),
                          ));
                          //Navigator.pushNamed(context, 'watyai');
                        },
                        icon: const Icon(LineIcons.mapPin),
                        color: Colors.red,
                        iconSize: 40.0,
                      )),
            ],
            
          )
        ],
      ),
    );
  }
}
