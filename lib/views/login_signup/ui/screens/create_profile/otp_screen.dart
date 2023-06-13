// ignore_for_file: depend_on_referenced_packages

import '/views/login_signup/ui/screens/create_profile/create_passwords_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import '../../../../../theme/color.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
                  height: 360,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 222, 42, 29),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  child: Image.asset(
                    height: 360,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    'assets/image/otp.png',
                  ),
                ),
              ],
            ),
            //widgets
            const SizedBox(height: 72),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Enter OTP',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Colors.black87),
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: OTPTextField(
                length: 4,
                onChanged: (value) {
                  if (kDebugMode) {
                    print('completed $value');
                  }
                },
                width: MediaQuery.of(context).size.width,
                fieldWidth: 60,
                style: const TextStyle(fontSize: 17),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.underline,
                onCompleted: (pin) {
                  if (kDebugMode) {
                    print("Completed: $pin");
                  }
                },
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {},
              child: const Text.rich(
                TextSpan(
                    text: 'Didn\'t recieved the OTP? ',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.grey),
                    children: [
                      TextSpan(
                          text: 'Resend',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: spartanRed))
                    ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 48,
              width: 320,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(spartanRed)),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const CreatePasswordScreen()));
                  },
                  child: const Text(
                    'Submit OTP',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white),
                  )),
            ),
            const SizedBox(
              height: 100,
            )
          ],
        )),
      ),
    );
  }
}
