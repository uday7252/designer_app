import 'package:flutter/material.dart';

import '../../../../../theme/color.dart';

class PwdChangeSuccessScreen extends StatelessWidget {
  const PwdChangeSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: spartanRed,
        ),
        SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset('assets/image/pwdchangesuccess.png')),
        const Positioned(
          top: 540,
          left: 42,
          right: 42,
          child: Text(
            'Your password change succesfully',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
                fontSize: 24),
          ),
        )
      ]),
    );
  }
}
