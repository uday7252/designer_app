// ignore_for_file: deprecated_member_use

import '/views/details_screen.dart';
import '/components/search_box.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

import '../../../model/data.dart';
import '../../../theme/color.dart';

class IdeasScreen extends StatefulWidget {
  const IdeasScreen({super.key});

  @override
  State<IdeasScreen> createState() => _IdeasScreenState();
}

class _IdeasScreenState extends State<IdeasScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  List<bool> _isSelected = [true, false, false, false, false];
  final TextStyle t500 = const TextStyle(
      fontFamily: 'Roboto', fontWeight: FontWeight.w500, fontSize: 14);
  final TextStyle t400 = const TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: Colors.grey);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this, initialIndex: 0);
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
          5, (i) => i == index); // Update the selected state
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Tab> tabs = [
      Tab(
        icon: SvgPicture.asset(
          'assets/icons/all.svg',
          width: 22,
          height: 18,
          color: _isSelected[0] ? secondaryColor : Colors.grey,
        ),
        child: const Text('All'),
      ),
      Tab(
        icon: SvgPicture.asset(
          'assets/icons/livingroom.svg',
          width: 18,
          height: 18,
          color: _isSelected[1] ? secondaryColor : Colors.grey,
        ),
        child: const Text('Living Room'),
      ),
      Tab(
        icon: SvgPicture.asset(
          'assets/icons/bedroom.svg',
          width: 22,
          height: 20,
          color: _isSelected[2] ? secondaryColor : Colors.grey,
        ),
        child: const Text('Bedroom'),
      ),
      Tab(
        icon: SvgPicture.asset(
          'assets/icons/bathroom.svg',
          width: 18,
          height: 18,
          color: _isSelected[3] ? secondaryColor : Colors.grey,
        ),
        child: const Text('Bathroom'),
      ),
      Tab(
        icon: SvgPicture.asset(
          'assets/icons/studyroom.svg',
          width: 18,
          height: 18,
          color: _isSelected[4] ? secondaryColor : Colors.grey,
        ),
        child: const Text('Study Room'),
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 10,
        titleSpacing: 0,
        elevation: 8,
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: SearchBox(),
        ),
        bottomOpacity: 1,
        bottom: TabBar(
          isScrollable: true,
          onTap: onDestinationClicked,
          indicator: const BoxDecoration(), // remove indicator
          labelColor: secondaryColor,
          unselectedLabelColor: Colors.grey,
          controller: _tabController,
          tabs: tabs,
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Found result (293)',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                    Text(
                      'Short',
                      style: TextStyle(
                          color: secondaryColor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ]),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 220,
                childAspectRatio: 9 / 16,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                            image: DataList[index].imageList[index],
                            index: index,
                          ))),
                  child: Material(
                    elevation: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 166,
                          width: 166,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage(DataList[index].imageList[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Mr. Ghesestoka’s house',
                            style: t500,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            '123 Photos',
                            style: t400,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
