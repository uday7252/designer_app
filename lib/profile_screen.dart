import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/pexels-pixabay-261429.jpg",
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 70,
                            ),
                            Text(
                              "Mayank Tripathi",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 80,
                          left: MediaQuery.of(context).size.width / 2 - 65,
                          child: Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: primaryColor, width: 2),
                              shape: BoxShape.circle,
                              image: const DecorationImage(
                                image: AssetImage(
                                  "assets/Avtar-Icon.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    SectionTile(
                      iconData: Icons.category_rounded,
                      tileText: "Your projects",
                      press: () {},
                    ),
                    const Divider(),
                    SectionTile(
                      iconData: Icons.person_add,
                      tileText: "Following",
                      press: () {},
                    ),
                    SectionTile(
                      iconData: Icons.person,
                      tileText: "Followers",
                      press: () {},
                    ),
                    const Divider(),
                    SectionTile(
                      iconData: Icons.security_update,
                      tileText: "Your Updates",
                      press: () {},
                    ),
                    SectionTile(
                      iconData: Icons.local_activity,
                      tileText: "Activity",
                      press: () {},
                    ),
                    SectionTile(
                      iconData: Icons.post_add,
                      tileText: "Posts",
                      press: () {},
                    ),
                    SectionTile(
                      iconData: Icons.public,
                      tileText: "Public Profile",
                      press: () {},
                    ),
                    SectionTile(
                      iconData: Icons.history,
                      tileText: "History",
                      press: () {},
                    ),
                    const Divider(),
                    SectionTile(
                      iconData: Icons.message,
                      tileText: "FAQ's",
                      press: () {},
                    ),
                    SectionTile(
                      iconData: Icons.privacy_tip,
                      tileText: "Privacy policy",
                      press: () {},
                    ),
                    SectionTile(
                      iconData: Icons.indeterminate_check_box_outlined,
                      tileText: "Terms & conditions",
                      press: () {},
                    ),
                    SectionTile(
                      iconData: Icons.logout,
                      tileText: "Sign Out",
                      press: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionTile extends StatelessWidget {
  final IconData iconData;
  final String tileText;
  final VoidCallback press;
  const SectionTile(
      {Key? key,
      required this.iconData,
      required this.press,
      required this.tileText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Icon(
                iconData,
                color: secondaryColor,
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    tileText,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios_sharp,
                size: 14,
                color: Colors.grey,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
