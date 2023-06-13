import 'package:flutter/material.dart';
import '../../theme/color.dart';
import '/views/particular_project_vendor/components/profile_container.dart';
import '/views/send_message_container.dart';
import '/views/particular_project_vendor/components/project_card_widget.dart';

import 'components/profile_info_particular_container.dart';

class ProjectVendorScreen extends StatefulWidget {
  const ProjectVendorScreen({super.key});

  @override
  State<ProjectVendorScreen> createState() => _ProjectVendorScreenState();
}

class _ProjectVendorScreenState extends State<ProjectVendorScreen> {
  bool containerVisible = false;

  void toggleContainerVisibility() {
    setState(() {
      containerVisible = !containerVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(180),
        child: AppBar(
          flexibleSpace: ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5),
                BlendMode.srcATop), // Adjust the opacity as needed
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: Image.asset(
                "assets/pexels-pixabay-261429.jpg", // Replace with your image path
                fit: BoxFit.fill,
              ), // Adjust the overlay color and opacity as needed
            ),
          ),
          centerTitle: false,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.share,
                color: primaryColor,
              ),
            )
          ],
          // title: IconButton(
          //   icon: const Icon(
          //     Icons.arrow_back,
          //     color: primaryColor,
          //   ),
          //   onPressed: () {},
          // ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const ProfileContainer(),
                  SizedBox(
                    height: 70,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0), // <-- Radius
                        ),
                      ),
                      onPressed: toggleContainerVisibility,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Project Info",
                            style: TextStyle(color: blackColor, fontSize: 20),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            containerVisible
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down_outlined,
                            color: blackColor,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Visibility(
                    visible: containerVisible,
                    child: const Column(
                      children: [
                        ProfileInfoContainer(
                          title: "Project Title",
                          icon: Icons.location_on,
                          description:
                              "Prestige LakeSide Habitat Villa 5BHk Devasthanagudu",
                        ),
                        ProfileInfoContainer(
                          title: "Location",
                          icon: Icons.location_on,
                          description: "Bengaluru, Karnataka, IN",
                        ),
                        ProfileInfoContainer(
                          title: "Project Cost",
                          icon: Icons.location_on,
                          description: "₹20,00,001 - ₹50,00,000",
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 16),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      if (index % 3 == 0) {
                        return const Row(
                          children: [
                            ParticularCardWidget(),
                            SizedBox(
                              width: 14,
                            ),
                            ParticularCardWidget(),
                            SizedBox(
                              width: 14,
                            ),
                            ParticularCardWidget()
                          ],
                        );
                      } else {
                        // Odd index, already added to a row
                        return const SizedBox
                            .shrink(); // Return an empty SizedBox
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          const SendMessageContainer()
        ],
      ),
    );
  }
}
