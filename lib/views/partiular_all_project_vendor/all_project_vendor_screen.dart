import 'package:flutter/material.dart';
import '../../theme/color.dart';
import '/views/partiular_all_project_vendor/components/profile_container.dart';
import '/views/partiular_all_project_vendor/components/project_card_widget.dart';
import '/views/send_message_container.dart';

class AllProjectVendorScreen extends StatefulWidget {
  const AllProjectVendorScreen({super.key});

  @override
  State<AllProjectVendorScreen> createState() => _AllProjectVendorScreenState();
}

class _AllProjectVendorScreenState extends State<AllProjectVendorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: false,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.share,
              color: blackColor,
            ),
          )
        ],
        title: const Row(
          children: [
            // IconButton(
            //   icon: const Icon(
            //     Icons.arrow_back,
            //     color: blackColor,
            //   ),
            //   onPressed: () {},
            // ),
            Text(
              "Projects",
              style: TextStyle(color: blackColor),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded( 
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const ProfileContainer(),
                  ListView.builder(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 16),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      if (index % 2 == 0) {
                        return const Row(
                          children: [
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
