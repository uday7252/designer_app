import '/views/login_signup/ui/screens/create_profile/otp_screen.dart';
import 'package:flutter/material.dart';

import '../../../../../components/original_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    child: Image.asset(
                      height: 360,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      'assets/image/forgotpwd.png',
                    ),
                  ),
                ],
              ),
              //widgets
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Forgot Password?',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Email or phone number',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                  obscureText: true,
                  validator: (value) => value!.isEmpty
                      ? 'You must enter a valid email or phone no.'
                      : null,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: OriginalButton(
                    text: 'Send OTP',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const OtpScreen()));
                    },
                    color: Colors.black,
                    textColor: Colors.white),
              ),
              const SizedBox(height: 56),
            ],
          ),
        ),
      ),
    );
  }
}
