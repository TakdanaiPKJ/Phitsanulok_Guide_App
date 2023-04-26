import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:test_app/screen/gamepage.dart';
import 'package:test_app/screen/gamescreen/quizwelcome.dart';
import 'package:test_app/screen/userhome.dart';
import 'package:test_app/screen/userlist.dart';
import 'package:test_app/screen/usersetting.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

int _currentIndex = 0;

List<Widget> navpage = const [
  UserHome(),
  UserList(),
  UserGame(),
  UserSetting(),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Center(
          child: //navpage[_currentIndex],
              QuizWelcome(),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ]),
          child: SafeArea(
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
                  child: GNav(
                    rippleColor: Colors.grey[300]!,
                    hoverColor: Colors.grey[100]!,
                    gap: 8,
                    activeColor: Colors.white,
                    iconSize: 24,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    duration: const Duration(milliseconds: 400),
                    tabBackgroundColor: Colors.black.withOpacity(.8),
                    color: Colors.black.withOpacity(.5),
                    tabs: const [
                      GButton(
                        icon: LineIcons.home,
                        text: 'Home',
                      ),
                      GButton(
                        icon: LineIcons.list,
                        text: 'List',
                      ),
                      GButton(
                        icon: LineIcons.chess,
                        text: 'Quiz Game',
                      ),
                      GButton(
                        icon: LineIcons.wrench,
                        text: 'Settings',
                      ),
                    ],
                    selectedIndex: _currentIndex,
                    onTabChange: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                  ))),
        ));
  }
}
