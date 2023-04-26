import 'package:flutter/material.dart';

class UserGame extends StatelessWidget {
  const UserGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Quiz Game'),
        backgroundColor: const Color(0XFFA13464),
        shadowColor: Colors.transparent,
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const Image(
                image: NetworkImage('https://picsum.photos/id/1/1920/1080'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const Image(
                image: NetworkImage('https://picsum.photos/id/12/1920/1080'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const Image(
                image: NetworkImage('https://picsum.photos/id/23/1920/1080'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const Image(
                image: NetworkImage('https://picsum.photos/id/34/1920/1080'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const Image(
                image: NetworkImage('https://picsum.photos/id/45/1920/1080'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: const Image(
                image: NetworkImage('https://picsum.photos/id/56/1920/1080'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
