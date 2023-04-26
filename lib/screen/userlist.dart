import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import '../model/listpage.dart';
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
        centerTitle: false,
        title: const Text('Place List'),
        backgroundColor: const Color(0XFFA13464),
        shadowColor: Colors.transparent,
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          final place = listplace[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(place.pic),
              ),
              title: Text(place.name),
              subtitle: Text(place.type),
              trailing: const Icon(LineIcons.arrowCircleRight),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailPage(place: place)));
              },
            ),
          );
        },
      ),
    );
  }
}
