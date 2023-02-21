import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moovees/core/shared-widget/bottom-nav-bar/d_bottom_navigation_bar.dart';
import 'package:moovees/core/shared-widget/bottom-nav-bar/d_bottom_navigation_bar_item.dart';
import 'package:moovees/core/utils/size_config.dart';
import 'package:moovees/feature/movie/persentation/page/movie_page.dart';
import 'package:moovees/feature/profile/persentation/page/profile_page.dart';
import 'package:moovees/feature/tv/persentation/page/tv_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.white,
      body: getBody(),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildBottomBar() {
    return DBottomNavigationBar(
      containerHeight: getProportionateScreenHeight(72),
      backgroundColor: Colors.white,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 5,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <DBottomNavigationBarItem>[
        DBottomNavigationBarItem(
          icon: FontAwesomeIcons.ticket,
          title: const Text('Movies'),
          activeColor: Colors.deepOrange,
          iconPosition: MainAxisAlignment.center,
        ),
        DBottomNavigationBarItem(
          icon: FontAwesomeIcons.tv,
          title: const Text('TV'),
          activeColor: Colors.deepOrange,
        ),
        DBottomNavigationBarItem(
          icon: Icons.person,
          title: Text('Profile'),
          activeColor: Colors.deepOrange,
          iconPosition: MainAxisAlignment.center,
        ),
      ],
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      MoviePage(),
      TvPage(),
      ProfilePage(),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
