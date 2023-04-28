import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../model/listmodel.dart';
import 'package:test_app/screen/detailpage.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Place List'),
        backgroundColor: const Color.fromRGBO(8, 61, 119, 1),
        shadowColor: Colors.transparent,
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          final place = listplace[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(place.pic),
              ),
              title: Text(
                place.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(place.type),
              trailing: const Icon(LineIcons.arrowCircleRight),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailPage(
                          place: place,
                          placeindex: index,
                        )));
              },
            ),
          );
        },
      ),
    );
  }
}
