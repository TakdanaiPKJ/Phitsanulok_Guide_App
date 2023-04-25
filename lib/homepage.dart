import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:test_app/userpage/userhome.dart';
import 'package:test_app/userpage/userlist.dart';
import 'package:test_app/userpage/usersetting.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class ListPlace {
  final String name;
  final String type;
  final String detail;
  final String pic;
  final String otherpic;
  final double latt;
  final double lngg;

  const ListPlace(
      {required this.name,
      required this.type,
      required this.detail,
      required this.pic,
      required this.otherpic,
      required this.latt,
      required this.lngg});
}

List<ListPlace> listplace = [
  const ListPlace(
    name: 'Wat Phra Si Rattana Mahathat',
    type: 'Temple',
    detail:
        """It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).""",
    pic:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Phra_Phuttha_Chinnarat_%28II%29.jpg/520px-Phra_Phuttha_Chinnarat_%28II%29.jpg',
    otherpic: 'https://picsum.photos/id/1/5000/3333',
    latt: 16.823696,
    lngg: 100.261878,
  ),
];

int _currentIndex = 0;

List<Widget> navpage = const [
  UserHome(),
  UserList(),
  UserSetting(),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: navpage[_currentIndex],
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
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
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
                        icon: LineIcons.assistiveListeningSystems,
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
