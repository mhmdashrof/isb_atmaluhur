import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:isb_atmaluhur/pages/favorite.dart';
import 'package:isb_atmaluhur/pages/location.dart';
import 'package:isb_atmaluhur/pages/profile.dart';
import 'package:isb_atmaluhur/pages/trips.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Feather.menu,
          size: 20.0,
        ),
        actions: [
          IconButton(
            icon: Icon(Feather.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: [
          Location(),
          Favorites(),
          Trips(),
          Profile(),
        ],
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  void onPageChanged(int page) {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
