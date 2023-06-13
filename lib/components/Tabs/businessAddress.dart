import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../provider/professional_index_provider.dart';
import '../original_button.dart';

class BusinessAddress extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  BusinessAddress({
    super.key,
  });

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
                'Address Details',
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
                'Please provide your personal and business \nAddress',
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
                'House no / Street name',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'House no / Street name cannot be empty';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'Address',
                  hintStyle: const TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Landmark',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Address cannot be empty';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: 'Address',
                  hintStyle: const TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Pin Code',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Area Pin Code',
                  hintStyle: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.grey),
                ),
                inputFormatters: [
                  LengthLimitingTextInputFormatter(6),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                validator: (value) {
                  if (value!.length < 6) {
                    return 'Enter a valid 6 digit pincode';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'City',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'City',
                    hintStyle: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.grey),
                    suffix: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey,
                      size: 16,
                    )),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'State',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'State',
                    hintStyle: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.grey),
                    suffix: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey,
                      size: 16,
                    )),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Country',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Country',
                    hintStyle: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.grey),
                    suffix: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.grey,
                      size: 16,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: OriginalButton(
                    text: 'Continue',
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        stepProvider.incrementIndex();
                        stepProvider.pageController.nextPage(
                            duration: const Duration(microseconds: 100),
                            curve: Curves.easeIn);
                            _formKey.currentState!.save();
                      }
                    },
                    color: Colors.orange,
                    textColor: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
