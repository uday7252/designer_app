import 'package:designer_app/components/original_button.dart';
import 'package:designer_app/provider/user_selection_provider.dart';
import 'package:designer_app/views/main_screen_tabs/profile_page-V/components/profile_avatar.dart';
import 'package:designer_app/views/main_screen_tabs/profile_page-V/section_tile/contact_us.dart';
import 'package:designer_app/views/main_screen_tabs/profile_page-V/section_tile/your_projects_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UserSelection>(context, listen: false);
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
                                  "assets/pexels-pixabay-261429.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            right: 20,
                            child: IconButton(
                              icon: const Icon(
                                Icons.edit,
                                color: blackColor,
                              ),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => ProfileDialog());
                              },
                            ))
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
                      tileText: provider.selected[1]
                          ? "Save Design"
                          : "Your projects",
                      press: () {
                        provider.selected[1]
                            ? Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => (const Scaffold(
                                      body: Center(
                                          child: Text('Save Design screen')),
                                    ))))
                            : Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const YourProjectsScreen()));
                      },
                    ),
                    // const Divider(),
                    // SectionTile(
                    //   iconData: Icons.post_add,
                    //   tileText: "Posts",
                    //   press: () {},
                    // ),
                    // const Divider(),
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
                      iconData: Icons.rate_review_outlined,
                      tileText: "Rate Our App",
                      press: () {},
                    ),
                    SectionTile(
                      iconData: Icons.phone,
                      tileText: "Contact Us",
                      press: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ContactUs()));
                      },
                    ),
                    SectionTile(
                      iconData: Icons.logout,
                      tileText: "Sign Out",
                      press: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const SignoutAlert();
                            });
                      },
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

class SignoutAlert extends StatelessWidget {
  const SignoutAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  Widget contentBox(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Sign Out',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
          const Text(
            'Are you sure you want to sign out?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: secondaryColor),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    color: whiteColor,
                  ),
                ),
              ),
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: secondaryColor),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  'Sign Out',
                  style: TextStyle(
                    color: whiteColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    const Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // TextButton(
                    //   onPressed: () {},
                    //   child: const Text(
                    //     'Save',
                    //     style: TextStyle(
                    //       color: secondaryColor,
                    //       fontSize: 16.0,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              Center(child: ProfileAvatar()),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Profile Information',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'First name',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                    decoration: InputDecoration(
                        labelText: 'First Name',
                        contentPadding: EdgeInsets.symmetric(horizontal: 0))),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Last name',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Last name',
                        contentPadding: EdgeInsets.symmetric(horizontal: 0))),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Email',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Email Address',
                        contentPadding: EdgeInsets.symmetric(horizontal: 0))),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Phone',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Phone Number',
                        contentPadding: EdgeInsets.symmetric(horizontal: 0))),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Address',
                        contentPadding: EdgeInsets.symmetric(horizontal: 0))),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Pin Code',
                        contentPadding: EdgeInsets.symmetric(horizontal: 0))),
              ),
              const SizedBox(
                height: 15,
              ),
              // Spacer(flex: 1),
              // Container(
              //   alignment: Alignment.center,
              //   child: TextButton(
              //     onPressed: () {
              //       Navigator.pop(context);
              //     },
              //     child: const Text(
              //       'Update Profile',
              //       style: TextStyle(color: secondaryColor),
              //     ),
              //   ),
              // )
              OriginalButton(
                  text: 'Update Profile',
                  onPressed: () {},
                  color: Colors.black,
                  textColor: whiteColor),
              SizedBox(
                height: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
