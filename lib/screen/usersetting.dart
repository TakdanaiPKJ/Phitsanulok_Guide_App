import 'package:flutter/material.dart';

class UserSetting extends StatelessWidget {
  const UserSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: const Color.fromRGBO(8, 61, 119, 1),
      ),
    );
  }
}
