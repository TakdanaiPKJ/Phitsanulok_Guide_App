import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';
import '../model/listpage.dart';

class DetailPage extends StatelessWidget {
  final ListPlace place;

  const DetailPage({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.amberAccent,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                place.pic,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              title: Text(place.name),
              centerTitle: true,
            ),
            expandedHeight: 250,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 400,
                    color: const Color.fromARGB(255, 16, 136, 200),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      //margin: const EdgeInsets.all(5),
                      child: Text(
                        place.detail,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic,
                            color: Color.fromARGB(255, 47, 47, 47)),
                      ),
                    ),
                  )),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(place.otherpic),
                            fit: BoxFit.cover)),
                  ),
                )),
          ),
          SliverToBoxAdapter(
            child: ElevatedButton(
              onPressed: () => MapsLauncher.launchCoordinates(
                  place.latt, place.lngg, '${place.name} is here'),
              child: Text('Go to ${place.name}'),
            ),
          ),
        ],
      ),
    );
  }
}
