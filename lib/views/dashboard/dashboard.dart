import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../theme/color.dart';
import '/views/explore_screen.dart';
// import '../wishlist_screen.dart';

import '../home_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  List<IconData> iconList = [
    Icons.search,
    Icons.apps,
    Icons.light,
    Icons.favorite,
    Icons.person,
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.animateToPage(index,
        curve: Curves.easeIn, duration: const Duration(milliseconds: 250));
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future _onWillPop() async {
    if (_currentIndex != 0) {
      setState(() => _currentIndex = 0);
      _pageController.animateToPage(0,
          duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
    } else {
      await SystemChannels.platform
          .invokeMethod<void>('SystemNavigator.pop', true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => await _onWillPop(),
      child: Scaffold(
        bottomNavigationBar: _bottomNavigationBar(),
        body: PageView(
          controller: _pageController,
          allowImplicitScrolling: false,
          physics: const NeverScrollableScrollPhysics(),
          children: const <Widget>[
            ExploreScreen(),
            MyHomePage(),
            // WishlistScreen(),
          ],
        ),
      ),
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) => onTabTapped(index),
      currentIndex: _currentIndex,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      iconSize: 25,
      selectedItemColor: secondaryColor,
      unselectedItemColor: defaultIconColor,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(iconList[0]), label: 'Explore'),
        BottomNavigationBarItem(icon: Icon(iconList[1]), label: 'Pro'),
        BottomNavigationBarItem(icon: Icon(iconList[2]), label: 'Idea'),
        BottomNavigationBarItem(
            icon: Icon(
              iconList[3],
              size: 25,
            ),
            label: 'Wishlist'),
        BottomNavigationBarItem(icon: Icon(iconList[4]), label: 'Profile')
      ],
    );
  }
}


