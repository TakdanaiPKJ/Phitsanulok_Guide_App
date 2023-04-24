import 'package:flutter/material.dart';
import 'package:test_app/homepage.dart';

class DetailPage extends StatelessWidget {
  final ListPlace place;

  const DetailPage({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
      ),
    );
  }
}
