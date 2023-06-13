import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../theme/color.dart';
import '/views/partiular_all_project_vendor/components/profile_container.dart';
import '/views/send_message/components/textformfiled.dart';

class SendMessageScreen extends StatelessWidget {
  const SendMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "SEND",
                style: TextStyle(color: secondaryColor, fontSize: 18),
              ),
            ),
          )
        ],
        title: Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.close_outlined,
                color: blackColor,
              ),
              onPressed: () {},
            ),
            const Text(
              "Contact",
              style: TextStyle(color: blackColor),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileContainer(),
            const TextFormFieldContainer(
              labelText: "Your Email",
            ),
            const TextFormFieldContainer(
              labelText: "Your Mobile Phone Number",
            ),
            const TextFormFieldContainer(
              labelText: "Your Project Passcode",
            ),
            const TextFormFieldContainer(
              labelText: "Message",
              maxlines: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  Checkbox(
                      value: false,
                      onChanged: (value) {
                        if (kDebugMode) {
                          print(value);
                        }
                      }),
                  const Expanded(
                    child: Text(
                      "I confirm this is a personal project enquiry and not a promotional message or solication",
                      maxLines: 2,
                      style: TextStyle(color: blackColor),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: RichText(
                text: const TextSpan(
                 children: [
                   TextSpan(
                     text:
                     "I confirm this is a personal project enquiry and not a promotional message or solication",
                     style: TextStyle(color: blackColor),
                   )
                 ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
