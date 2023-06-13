// ignore_for_file: deprecated_member_use

import '/views/home_page.dart';

import '/views/design_ideas.dart';
import '/views/wishlist_screen.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/color.dart';
import '/utils/constant.dart';
import 'home.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> with TickerProviderStateMixin {
  final pageController = PageController(keepPage: true, viewportFraction: 1.0);
  int _activeTabIndex = 0;
  final List _barItems = [
    {
      "icon": "assets/icons/search.svg",
      "page": const HomePage(),
    },
    {"icon": "assets/image/professional.svg", "page": const MyHomePage()},
    {
      "icon": "assets/icons/hollowbulb.svg",
      "page": const DesignIdeasScreen(),
    },
    {"icon": "assets/icons/hollow heart.svg", "page": const WishListScreen()},
    {
      "icon": "assets/icons/profile.svg",
      "page": Container(
        alignment: Alignment.center,
        child: const Text('Profile'),
      ),
    },
  ];

//====== set animation=====
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: ANIMATED_BODY_MS),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void initState() {
    super.initState();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.stop();
    _controller.dispose();
    super.dispose();
  }

  _buildAnimatedPage(page) {
    return FadeTransition(child: page, opacity: _animation);
  }

  void onPageChanged(int index) {
    if (index == _activeTabIndex) return;
    _controller.reset();
    setState(() {
      _activeTabIndex = index;
    });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _activeTabIndex,
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(color: Colors.grey, fontSize: 16),
        selectedLabelStyle: const TextStyle(
            color: secondaryColor,
            fontSize: 16), 
        onTap: onPageChanged,
        selectedItemColor: secondaryColor,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            label: "Explore",
            icon: Container(
              padding: const EdgeInsets.all(8.0),
              child: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Pro",
            icon: Container(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                'assets/icons/professional.svg',
                width: 25,
                height: 25,
                color: Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Idea",
            icon: Container(
                padding: const EdgeInsets.all(8.0),
                child: const Icon(Icons.lightbulb_outline)),
          ),
          BottomNavigationBarItem(
            label: "Wishlist",
            icon: Container(
              padding: const EdgeInsets.all(8.0),
              child: const Icon(
                Icons.favorite_border,
                // color: Colors.grey,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Container(
                padding: const EdgeInsets.all(8.0),
                child: const Icon(
                  Icons.account_circle_outlined,
                  size: 25,
                )),
          ),
        ],
      ),
      body: _buildPage(),
    );
  }

  Widget _buildPage() {
    return IndexedStack(
      index: _activeTabIndex,
      children: List.generate(
        _barItems.length,
        (index) => _buildAnimatedPage(_barItems[index]["page"]),
      ),
    );
  }
}
