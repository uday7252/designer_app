// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/color.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar>
    with TickerProviderStateMixin {
  late TabController _tabController;
  List<bool> _isSelected = [
    true,
    false,
    false,
    false
  ]; // Track the selected state of each tab

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void onDestinationClicked(int index) {
    setState(() {
      _tabController.index = index;
      _isSelected = List<bool>.generate(
          4, (i) => i == index); // Update the selected state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          labelPadding:
              kTabLabelPadding - const EdgeInsets.symmetric(horizontal: 6),
          onTap: onDestinationClicked,
          indicator: const BoxDecoration(), // remove indicator
          labelColor: secondaryColor,
          unselectedLabelColor: Colors.grey,
          controller: _tabController,
          tabs: [
            Tab(
              icon: SvgPicture.asset(
                'assets/icons/Architects.svg',
                width: 15,
                height: 15,
                color: _isSelected[0] ? secondaryColor : Colors.grey,
              ),
              child: const Text('Architects'),
            ),
            Tab(
              icon: SvgPicture.asset(
                'assets/icons/Interior Designer.svg',
                width: 15,
                height: 15,
                color: _isSelected[1] ? secondaryColor : Colors.grey,
              ),
              child: const Text('Interior Designer'),
            ),
            Tab(
              icon: SvgPicture.asset(
                'assets/icons/Home Construction.svg',
                width: 15,
                height: 15,
                color: _isSelected[2] ? secondaryColor : Colors.grey,
              ),
              child: const Text('Home Construction'),
            ),
            Tab(
              icon: SvgPicture.asset(
                'assets/icons/General Con.svg',
                width: 15,
                height: 15,
                color: _isSelected[3] ? secondaryColor : Colors.grey,
              ),
              child: const Text('General Contractor'),
            ),
          ],
        ),
      ],
    );
  }
}
