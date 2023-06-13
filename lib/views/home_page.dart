import 'package:flutter/material.dart';
import '../theme/color.dart';
import '/views/profile_details.dart';
import '../components/chip_widget.dart';
import '../components/home_card_widget.dart';
import '../components/location_container.dart';
import '../components/nearby_professional_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> filterType = [
    "Filter",
    "Location",
    "Pro Category",
    "Heigh Rated"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        centerTitle: false,
        title: const Text(
          "Find Professionals",
          style: TextStyle(color: blackColor),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 16, right: 16),
              child: ListView.builder(
                  itemCount: filterType.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ChipWidget(
                        text: filterType[index],
                        icon: index == 0
                            ? Icons.filter_alt_outlined
                            : Icons.keyboard_arrow_down,
                        isIconShowFirst: index == 0,
                      ),
                    );
                  }),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const LocationContainer(),
            const NearbyProfessionalWidget(),
            ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ProfileDetailsScreen();
                          },
                        ),
                      );
                    },
                    child: const HomeCardWidget());
              },
            ),
          ],
        ),
      ),
    );
  }
}
