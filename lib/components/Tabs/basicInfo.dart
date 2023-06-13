// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../../provider/professional_index_provider.dart';
import '../../theme/color.dart';
import '../original_button.dart';

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
              const Text(
                'Basic Information',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Please provide your personal and business information',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Upload profile image / business logo',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                  child: ImageUploadWidget(),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const Text(
                'Professional / Company Name',
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
              const Text(
                'Phone',
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
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: (value) {
                    if (value!.length < 10) {
                      return "Please enter valid phone no.";
                    }
                    return null;
                  },
                  decoration: inputDecorationMethod(hintText: 'Phone Number')),
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
              const Text(
                'Description',
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
              const Text(
                'Personal Website',
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
              TextFormField(
                inputFormatters: const [],
                decoration: InputDecoration(
                  suffix: SvgPicture.asset(
                    'assets/icons/facebook.svg',
                    height: 24,
                    width: 24,
                  ),
                  contentPadding:
                      const EdgeInsets.only(left: 20, right: 10, top: 0),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor)),
                  hintText: 'Enter Your Facebook',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  suffix: SvgPicture.asset(
                    'assets/icons/instagram.svg',
                    height: 24,
                    width: 24,
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
                    suffix: SvgPicture.asset(
                      'assets/icons/linkedin.svg',
                      height: 24,
                      width: 24,
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

class ImageUploadWidget extends StatefulWidget {
  const ImageUploadWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ImageUploadWidgetState createState() => _ImageUploadWidgetState();
}

class _ImageUploadWidgetState extends State<ImageUploadWidget> {
  File? _image;

  Future<void> _pickImage(ImageSource source) async {
    final pickedImage = await ImagePicker().pickImage(source: source);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          _image == null
              ? const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.account_circle_outlined,
                    size: 55,
                    color: Colors.white,
                  ),
                )
              : CircleAvatar(
                  radius: 100,
                  backgroundImage: FileImage(_image!),
                ),
          TextButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            leading: const Icon(Icons.camera_alt),
                            title: const Text('Take a photo'),
                            onTap: () {
                              Navigator.pop(context);
                              _pickImage(ImageSource.camera);
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.photo_library),
                            title: const Text('Choose from gallery'),
                            onTap: () {
                              Navigator.pop(context);
                              _pickImage(ImageSource.gallery);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Text(
                'Change Image',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: secondaryColor),
              )),
          const SizedBox(
            height: 10,
          ),
          if (_image == null)
            OutlinedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            leading: const Icon(Icons.camera_alt),
                            title: const Text('Take a photo'),
                            onTap: () {
                              Navigator.pop(context);
                              _pickImage(ImageSource.camera);
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.photo_library),
                            title: const Text('Choose from gallery'),
                            onTap: () {
                              Navigator.pop(context);
                              _pickImage(ImageSource.gallery);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Upload',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: secondaryColor,
                  ),
                ),
              ),
            ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
