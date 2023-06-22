// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:provider/provider.dart';

import '../../../provider/professional_index_provider.dart';
import '../../../theme/color.dart';
import '../../original_button.dart';
import 'ImageUploadWidget.dart';

class BasicInfo extends StatelessWidget {
  const BasicInfo({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    final stepProvider = Provider.of<StepProvider>(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 15,
              ),
              // const 0Text(
              //   'Basic Information',
              //   style: TextStyle(
              //     fontFamily: 'Roboto',
              //     fontWeight: FontWeight.w500,
              //     fontSize: 20,
              //     color: Colors.black,
              //   ),
              // ),
              // const SizedBox(
              //   height: 5,
              // ),
              // const Text(
              //   'Please provide your personal and business information',
              //   style: TextStyle(
              //     fontFamily: 'Roboto',
              //     fontWeight: FontWeight.w400,
              //     fontSize: 16,
              //     color: Colors.grey,
              //   ),
              // ),
              // const SizedBox(
              //   height: 24,
              // ),
              const Text.rich(
                TextSpan(
                    text: 'Upload profile image / business logo ',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                    children: [
                      TextSpan(
                          text: '*', style: TextStyle(color: secondaryColor))
                    ]),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                  heightFactor: 1.25,
                  child: ImageUploadWidget(),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const Text.rich(
                TextSpan(
                    text: 'Professional / Company Name ',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.black),
                    children: [
                      TextSpan(
                          text: '*', style: TextStyle(color: secondaryColor))
                    ]),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                inputFormatters: const [],
                validator: (value) {
                  if (value!.length < 4) {
                    return "Please enter minimum 4 characters";
                  }
                  return null;
                },
                decoration:
                    inputDecorationMethod(hintText: 'Minimum 4 character'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text.rich(
                TextSpan(
                    text: 'Phone ',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.black),
                    children: [
                      TextSpan(
                          text: '*', style: TextStyle(color: secondaryColor))
                    ]),
              ),
              const SizedBox(
                height: 5,
              ),
              TextField(
                  decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/icons/indian_flag.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                contentPadding: const EdgeInsets.only(left: 20),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: secondaryColor)),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: secondaryColor)),
                hintText: 'Phone Number',
              )),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Email',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                  inputFormatters: const [],
                  validator: (value) {
                    if (!value!.contains('@')) {
                      return "Please enter valid email address";
                    }
                    return null;
                  },
                  decoration: inputDecorationMethod(hintText: 'Email Address')),
              const SizedBox(
                height: 10,
              ),
              const Text.rich(
                TextSpan(
                    text: 'Description ',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.black),
                    children: [
                      TextSpan(
                          text: '*', style: TextStyle(color: secondaryColor))
                    ]),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor)),
                  contentPadding: EdgeInsets.only(left: 20, top: 20),
                  hintText: 'Write here...',
                ),
                maxLines: 5,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text.rich(TextSpan(
                  text: 'Personal Website ',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.black),
                  children: [
                    TextSpan(text: '*', style: TextStyle(color: secondaryColor))
                  ])),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                inputFormatters: const [],
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter a valid website";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 20, right: 10),
                  suffix: SvgPicture.asset(
                    'assets/icons/website.svg',
                    height: 20,
                    width: 20,
                  ),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor)),
                  hintText: 'Your Website',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Social Links',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              // TextFormField(
              //   inputFormatters: const [],
              //   decoration: InputDecoration(
              //     suffix: SvgPicture.asset(
              //       'assets/icons/facebook.svg',
              //       height: 24,
              //       width: 24,
              //     ),
              //     contentPadding:
              //         const EdgeInsets.only(left: 20, right: 10, top: 0),
              //     border: const OutlineInputBorder(
              //         borderSide: BorderSide(color: secondaryColor)),
              //     focusedBorder: const OutlineInputBorder(
              //         borderSide: BorderSide(color: secondaryColor)),
              //     hintText: 'Enter Your Facebook',
              //   ),
              // ),
              TextFormField(
                inputFormatters: const [],
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      'assets/icons/facebook.svg',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  contentPadding:
                      const EdgeInsets.only(left: 20, right: 10, top: 0),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: secondaryColor),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: secondaryColor),
                  ),
                  hintText: 'Enter Your Facebook',
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      'assets/icons/instagram.svg',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  contentPadding: const EdgeInsets.only(left: 20, right: 10),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor)),
                  hintText: 'Enter Your Instagram',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                inputFormatters: const [],
                decoration: InputDecoration(
                    suffixIcon: SvgPicture.asset(
                      'assets/icons/linkedin.svg',
                      fit: BoxFit.scaleDown,
                    ),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: secondaryColor)),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: secondaryColor)),
                    hintText: 'Enter Your linkedin',
                    contentPadding: const EdgeInsets.only(left: 20, right: 10)),
              ),
              const SizedBox(
                height: 10,
              ),
              OriginalButton(
                  text: 'Continue',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      stepProvider.incrementIndex();
                      // stepProvider.pageController.nextPage(
                      //     duration: const Duration(microseconds: 100),
                      //     curve: Curves.easeIn);
                      _formKey.currentState!.save();
                    }
                  },
                  color: Colors.black,
                  textColor: Colors.white)
            ],
          ),
        ),
      ),
    );
  }

  InputDecoration inputDecorationMethod({required String hintText}) {
    return InputDecoration(
      contentPadding: const EdgeInsets.only(left: 20),
      border: const OutlineInputBorder(
          borderSide: BorderSide(color: secondaryColor)),
      focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: secondaryColor)),
      hintText: hintText,
    );
  }
}
