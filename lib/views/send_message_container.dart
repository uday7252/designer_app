import 'package:flutter/material.dart';

import '../theme/color.dart';


class SendMessageContainer extends StatelessWidget {
  const SendMessageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      width: double.infinity,
      height: 90,
      padding: EdgeInsets.only(
          left: MediaQuery.sizeOf(context).width * 0.1,
          right: MediaQuery.sizeOf(context).width * 0.1,
          bottom: 25,
          top: 15),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4), // <-- Radius
          ),
        ),
        onPressed: () {},
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.mail,
              color: primaryColor,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Send Message",
              style: TextStyle(color: primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
