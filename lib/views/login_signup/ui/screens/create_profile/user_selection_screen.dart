import 'package:flutter/foundation.dart';

import '/views/login_signup/ui/screens/create_profile/create_profile_screen.dart';
import '/views/root_app.dart';

import '../../../../../components/icon_container.dart';
import '../../../../../components/original_button.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

class UserSelectionScreen extends StatefulWidget {
  const UserSelectionScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _UserSelectionScreenState createState() => _UserSelectionScreenState();
}

class _UserSelectionScreenState extends State<UserSelectionScreen> {
  List<bool> selected = [false, false];

  void selectOne(int index) {
    setState(() {
      for (int i = 0; i < selected.length; i++) {
        if (i == index) {
          selected[i] = true;
        } else {
          selected[i] = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 222, 42, 29),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        ),
                        child: SvgPicture.asset(
                          'assets/image/enter otp.svg',
                          height: MediaQuery.of(context).size.height * 0.52,
                          width: 360,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Which describes you Best?',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconContainer(
                    assetName: 'assets/icons/professional1.svg',
                    text: 'Professional',
                    isSelected: selected[0],
                    onTap: () => selectOne(0),
                  ),
                  IconContainer(
                    assetName: 'assets/icons/homeOwner.svg',
                    text: 'Home Owner',
                    isSelected: selected[1],
                    onTap: () => selectOne(1),
                  ),
                ],
              ),
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: OriginalButton(
                  text: "Save & Next",
                  onPressed: () {
                    if (kDebugMode) {
                      print('save & next');
                    }
                    if (selected[0]) {
                      if (kDebugMode) {
                        print('professional');
                      }
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CreateProfileScreen(),
                      ));
                    } else if (selected[1]) {
                      if (kDebugMode) {
                        print('homeowner');
                      }
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RootApp(),
                      ));
                    }
                  },
                  color: Colors.black,
                  textColor: Colors.white,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
