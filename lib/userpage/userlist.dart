import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:test_app/homepage.dart';
import 'package:test_app/userpage/detailpage.dart';

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
        title: const Text('List'),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          final place = listplace[index];
          return Card(
            child: ListTile(
              leading: const CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(''),
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
