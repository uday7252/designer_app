// ignore_for_file: depend_on_referenced_packages

import 'dart:developer';
import 'dart:io';

import 'package:designer_app/views/root_app.dart';

import '../../../provider/professional_index_provider.dart';
import '/constant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';

import '../../original_button.dart';

class ProjectDetails extends StatefulWidget {
  const ProjectDetails({super.key});

  @override
  State<ProjectDetails> createState() => _ProjectDetailsState();
}

class _ProjectDetailsState extends State<ProjectDetails> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String? selectedYear;
    final List<String> costRange = [
      'Less than \$1000',
      '\$1000 - \$5000',
      '\$5000 - \$10,000',
      'More than \$10,000',
    ];
    final stepProvider = Provider.of<StepProvider>(context);
    var inputDecoration = const InputDecoration(
      // suffixIcon: Icon(Icons.keyboard_arrow_down),
      border: OutlineInputBorder(),
      hintText: 'Cost Range',
    );
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
                'Project Information',
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
                'Please provide Project information',
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
              const Text.rich(
                TextSpan(
                    text: 'Project Name ',
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Project name cannot be empty";
                  }
                  return null;
                },
                inputFormatters: const [],
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Type Project name',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text.rich(
                TextSpan(
                    text: 'Project Address ',
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
                  if (value!.length <= 4) {
                    return "Details must required";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Full Address',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text.rich(
                TextSpan(
                    text: 'Project Year ',
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
              // TextFormField(
              //   inputFormatters: const [],
              //   decoration: const InputDecoration(
              //     border: OutlineInputBorder(),
              //     hintText: 'DD/MM/YY',
              //   ),
              // ),
              // DropdownButtonFormField<String>(
              //   items: ['2021', '2022', '2023', '2024'].map((String value) {
              //     return DropdownMenuItem<String>(
              //       value: value,
              //       child: Text(value),
              //     );
              //   }).toList(),
              //   decoration: const InputDecoration(
              //     border: OutlineInputBorder(),
              //     hintText: 'Select Year',
              //   ),
              //   onChanged: (String? newValue) {
              //     // Perform some action with the selected value
              //   },
              // ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    hint: const Text('Select Year'),
                    dropdownColor: backgroundColor,
                    value: selectedYear,
                    isExpanded: true,
                    icon: const Icon(Icons.arrow_drop_down),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedYear = newValue;
                      });
                    },
                    items: ['2021', '2022', '2023', '2024'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text.rich(
                TextSpan(
                    text: 'Project Cost ',
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
              // TextFormField(
              //   inputFormatters: const [],
              //   decoration: const InputDecoration(
              //     suffix: Icon(Icons.keyboard_arrow_down),
              //     border: OutlineInputBorder(),
              //     hintText: 'Cost Range',
              //   ),
              // ),
              DropdownButtonFormField<String>(
                decoration: inputDecoration,
                items: costRange.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  // Perform some action with the selected value
                },
              ),
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
                  border: OutlineInputBorder(),
                  hintText: 'Write here...',
                ),
                maxLines: 5,
              ),
              const SizedBox(
                height: 10,
              ),
              OriginalButton(
                  text: 'Continue',
                  onPressed: () {
                    if (_formKey.currentState!.validate() &&
                        stepProvider.pageController.page! < 4) {
                      _formKey.currentState!.save();
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const RootApp()));
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
}

class ImageUploadWidget extends StatefulWidget {
  const ImageUploadWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ImageUploadWidgetState createState() => _ImageUploadWidgetState();
}

class _ImageUploadWidgetState extends State<ImageUploadWidget> {
  final List<File> _images = [];

  Future<void> _pickImage(ImageSource source) async {
    final List<XFile> images = await ImagePicker().pickMultiImage();

    setState(() {
      for (var image in images) {
        final imageFile = File(image.path);
        _images.add(imageFile);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _images.isEmpty
            ? const Icon(
                Icons.folder_outlined,
                size: 55,
                color: Colors.grey,
              )
            :
            // GridView.builder(
            //     shrinkWrap: true,
            //     physics: const NeverScrollableScrollPhysics(),
            //     itemCount: _images.length,
            //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 3,
            //       crossAxisSpacing: 10,
            //       mainAxisSpacing: 10,
            //     ),
            //     itemBuilder: (context, index) {
            //       final image = _images[index];
            //       return Stack(
            //         children: [
            //           Image.file(
            //             image,
            //             fit: BoxFit.cover,
            //           ),
            //           Positioned(
            //             top: 0,
            //             right: 0,
            //             child: Container(
            //               alignment: Alignment.center,
            //               decoration: BoxDecoration(
            //                   borderRadius: BorderRadius.circular(5),
            //                   color: Colors.black26),
            //               child: Center(
            //                 child: IconButton(
            //                   icon: const Icon(
            //                     Icons.edit_outlined,
            //                     color: Colors.white,
            //                   ),
            //                   onPressed: () => _pickImage(ImageSource.gallery),
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ],
            //       );
            //     },
            //   ),
            GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _images.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  final image = _images[index];
                  return Stack(
                    children: [
                      AspectRatio(
                        aspectRatio:
                            1, // Set the desired aspect ratio for the images
                        child: Image.file(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black26,
                          ),
                          child: Center(
                            child: IconButton(
                              icon: const Icon(
                                Icons.edit_outlined,
                                color: Colors.white,
                              ),
                              onPressed: () => _pickImage(ImageSource.gallery),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
        const SizedBox(
          height: 10,
        ),
        if (_images.isEmpty)
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
        )
      ],
    );
  }
}
