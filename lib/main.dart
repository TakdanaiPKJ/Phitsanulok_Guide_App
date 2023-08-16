import 'package:flutter/material.dart';
import 'package:test_app/homepage.dart';
import 'package:test_app/screen/userhome.dart';
import 'package:test_app/screen/userlist.dart';
import 'package:test_app/screen/usersetting.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'ChakraPetch',
          ),
          
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
