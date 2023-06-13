import '/views/login_signup/ui/screens/create_profile/user_selection_screen.dart';
import 'package:flutter/material.dart';

import '../../../../../components/original_button.dart';

class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen({super.key});

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
                      'assets/image/createPassword.png',
                    ),
                  ),
                ],
              ),
              //widgets
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Create Password',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'New Password',
                    border: OutlineInputBorder(borderSide: BorderSide()),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                  ),
                  obscureText: true,
                  validator: (value) =>
                      value!.isEmpty ? 'You must enter a valid password' : null,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Confirm Password',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                  ),
                  obscureText: true,
                  validator: (value) =>
                      value!.isEmpty ? 'You must enter a valid password' : null,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: OriginalButton(
                    text: 'Sign Up',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              // CreateProfileScreen()
                              const UserSelectionScreen()));
                    },
                    color: Colors.black,
                    textColor: Colors.white),
              ),
              const SizedBox(height: 56),
              const Text.rich(TextSpan(
                  text: 'By signing you agree to our ',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                      color: Colors.grey),
                  children: [
                    TextSpan(
                        text: 'terms and condition\n',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: Colors.red),
                        children: [
                          TextSpan(
                              text: 'and',
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                  color: Colors.grey),
                              children: [
                                TextSpan(
                                    text: ' privacy policy',
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                        color: Colors.red))
                              ])
                        ])
                  ])),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
