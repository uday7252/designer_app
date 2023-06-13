import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../components/auth_form.dart';

enum AuthType { login, register }

class AuthScreen extends StatelessWidget {
  final AuthType authType;

  const AuthScreen({Key? key, required this.authType}) : super(key: key);

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
                  height: 290,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 222, 42, 29),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    if (authType == AuthType.login)
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40)),
                        child: SvgPicture.asset(
                          'assets/image/sigb in.svg',
                          height: 300,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      )
                    else if (authType == AuthType.register)
                      ClipRRect(
                        child: SvgPicture.asset(
                          'assets/image/sign up.svg',
                          height: 430,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      )
                  ],
                ),
              ],
            ),
            AuthForm(authType: authType),
          ],
        )),
      ),
    );
  }
}
