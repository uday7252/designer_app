import '/views/login_signup/ui/screens/create_profile/auth_screen.dart';
import '/views/login_signup/ui/screens/create_profile/forgot_pwd.dart';
import '/views/login_signup/ui/screens/create_profile/otp_screen.dart';
import '/views/root_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../theme/color.dart';
import 'original_button.dart';

class AuthForm extends StatefulWidget {
  final AuthType authType;

  const AuthForm({Key? key, required this.authType}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  String _email = '', _password = '';
  bool isEmailValid(String email) {
    const pattern = r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';
    final regex = RegExp(pattern);
    return regex.hasMatch(email);
  }

  bool isPhoneNumberValid(String phoneNumber) {
    const pattern = r'^\+?[1-9]\d{1,14}$';
    final regex = RegExp(pattern);
    return regex.hasMatch(phoneNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: <Widget>[
            (widget.authType == AuthType.login)
                ? const SizedBox(height: 10)
                : const SizedBox(
                    height: 15,
                  ),
            // ignore: unrelated_type_equality_checks
            (widget.authType == AuthType.login)
                ? const Text(
                    'Sign In',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Colors.black),
                  )
                : const Text(
                    'Sign Up',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: Colors.black),
                  ),
            const SizedBox(
              height: 8,
            ),

            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Email or Phone Number',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
              ),
              onChanged: (value) {
                _email = value;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return 'You must enter a valid email or Phone Number';
                } else if (!isEmailValid(value) && !isPhoneNumberValid(value)) {
                  return 'Invalid email or Phone Number';
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            if (widget.authType == AuthType.login)
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                ),
                obscureText: true,
                onChanged: (value) {
                  _password = value;
                },
                validator: (value) => value!.length <= 6
                    ? 'Your password must be larger than 6 characters'
                    : null,
              ),
            // const SizedBox(height: 20),
            if (widget.authType == AuthType.login)
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ForgotPasswordScreen()));
                    },
                    child: const Text(
                      'Forgot Your Password ?',
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w800,
                          fontSize: 15,
                          color: Colors.black),
                    )),
              ),
            OriginalButton(
              text: widget.authType == AuthType.login ? 'Sign In' : 'Sign Up',
              color: spartanRed,
              textColor: Colors.white,
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  if (widget.authType == AuthType.login) {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const RootApp()));
                  } else {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const OtpScreen()));
                  }
                }
              },
            ),
            const SizedBox(height: 6),
            if (widget.authType == AuthType.login)
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(5)),
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    if (widget.authType == AuthType.login) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) =>
                              const AuthScreen(authType: AuthType.register)));
                      if (kDebugMode) {
                        print(widget.authType);
                      }
                    } else {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) =>
                              const AuthScreen(authType: AuthType.login)));
                      if (kDebugMode) {
                        print(widget.authType);
                      }
                    }
                  },
                  child: const Text(
                    "Create Account",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            const SizedBox(height: 6),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: const Row(
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "or",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            OutlinedButton(
                style: ButtonStyle(
                    alignment: Alignment.center,
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(12)),
                    side: MaterialStateProperty.all(const BorderSide(
                        color: Color.fromARGB(190, 158, 158, 158)))),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/image/search.png",
                      height: 24,
                      width: 24,
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      'Sign In With Google',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    )
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            if (widget.authType == AuthType.register)
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
            const SizedBox(height: 16)
          ],
        ),
      ),
    );
  }
}
