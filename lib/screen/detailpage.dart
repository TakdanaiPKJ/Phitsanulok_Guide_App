import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:maps_launcher/maps_launcher.dart';
import '../gamescreen/matchinggame.dart';
import '../model/listmodel.dart';

class DetailPage extends StatelessWidget {
  final ListPlace place;
  final int placeindex;
  const DetailPage({Key? key, required this.place, required this.placeindex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    int id;
    id = placeindex;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(235, 235, 211, 1),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color.fromRGBO(4, 41, 77, 1),
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage(place.pic),
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              title: Text(
                place.name,
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
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
                    //height: 400,
                    color: const Color.fromRGBO(235, 235, 211, 1),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      //margin: const EdgeInsets.all(5),
                      child: Text(
                        place.detail,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(247, 135, 100, 1)),
                      ),
                    ),
                  )),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(place.otherpic),
                            fit: BoxFit.cover)),
                  ),
                )),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: 100,
              height: 60,
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
              child: ElevatedButton.icon(
                onPressed: () => MapsLauncher.launchCoordinates(
                    place.latt, place.lngg, '${place.name} is here'),
                label: Text(
                  'Go to ${place.name}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color.fromRGBO(235, 235, 211, 1),
                  ),
                ),
                icon: LineIcon.mapMarker(
                  color: const Color.fromRGBO(235, 235, 211, 1),
                ),
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  backgroundColor: const Color.fromRGBO(218, 65, 103, 1),
                  elevation: 0,
                  shadowColor: Colors.transparent,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: 100,
              height: 60,
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 5),
              child: Builder(
                builder: (context) => ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MatchingGame(
                              placeindex: id,
                              placename: place.name,
                            )));
                  },
                  label: Text(
                    '''${place.name}'s Matching Game''',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color.fromRGBO(235, 235, 211, 1),
                    ),
                  ),
                  icon: Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: LineIcon.chess(
                      color: const Color.fromRGBO(235, 235, 211, 1),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    backgroundColor: const Color.fromRGBO(218, 65, 103, 1),
                    //minimumSize: const Size(300, 50),
                    shadowColor: Colors.transparent,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
