import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/account.dart';
import 'package:instagram_ui/pages/home.dart';
import 'package:instagram_ui/pages/reels.dart';
import 'package:instagram_ui/pages/search.dart';
import 'package:instagram_ui/pages/shop.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //navigat around the nav bar
  int _seletedindex=0;
  void _bottomnavbar(int index){
    setState(() {
      _seletedindex=index;
    });
  }
  final List<Widget> _childen=[
    UserHome(),
    UserSearch(),
    Usereels(),
    UserShop(),
    Useraccount()
  ];

  @override
  Widget build(BuildContext context) {
    print(_seletedindex);
    return SafeArea(
      child: Scaffold(
        body: _childen[_seletedindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _seletedindex,
          onTap: _bottomnavbar,
          items: [
            BottomNavigationBarItem(icon:Icon(Icons.home),label:"home"),
            BottomNavigationBarItem(icon:Icon(Icons.search),label:"search"),
            BottomNavigationBarItem(icon:Icon(Icons.video_call),label:"reels"),
            BottomNavigationBarItem(icon:Icon(Icons.shop),label:"shop"),
            BottomNavigationBarItem(icon:Icon(Icons.person),label:"account"),

          ],
        ),

      ),
    );
  }
}
