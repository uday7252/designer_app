import 'package:designer_app/components/search_box.dart';
import 'package:flutter/material.dart';
import '../../../theme/color.dart';
import '../profile_page-V/profile_details_screen.dart';
import '../../../components/chip_widget.dart';
import '../../../components/home_card_widget.dart';
import '../../../components/location_container.dart';
import '../../../components/nearby_professional_widget.dart';

class ProPage extends StatefulWidget {
  const ProPage({super.key});

  @override
  State<ProPage> createState() => _ProPageState();
}

class _ProPageState extends State<ProPage> {
  List<String> filterType = [
    "Filter",
    "Location",
    "Pro Category",
    "Heigh Rated"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        centerTitle: false,
        elevation: 1,
        title: const SearchBox(),
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
            ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 0),
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
