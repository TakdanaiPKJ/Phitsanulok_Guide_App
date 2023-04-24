import 'package:flutter/material.dart';
import 'package:test_app/homepage.dart';
import 'package:test_app/userpage/userhome.dart';
import 'package:test_app/userpage/userlist.dart';
import 'package:test_app/userpage/usersetting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        'home': (context) => const UserHome(),
        'list': (context) => const UserList(),
        'setting': (context) => const UserSetting(),
      },
    );
  }
}
