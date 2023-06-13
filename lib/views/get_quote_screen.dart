import '/components/bottom_elevated_button.dart';
import 'package:flutter/material.dart';

class GetQuoteScreen extends StatelessWidget {
  const GetQuoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Get a Quote',
          style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black87,
              ))
        ],
      ),
      body: Column(children: [
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: 'Subject',
                        hintStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.zero),
                            borderSide: BorderSide(color: Colors.black)))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                    maxLines: 6,
                    decoration: const InputDecoration(
                        hintText: 'Write here ...',
                        hintStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 14),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.zero),
                            borderSide: BorderSide(color: Colors.black)))),
              )
            ],
          ),
        ),
        BottomElevatedButton(
          text: 'Get a Quote',
        ),
      ]),
    );
  }
}
