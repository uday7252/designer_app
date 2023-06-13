 import 'package:flutter/material.dart';

Widget buildImage(String image, int index,BuildContext context) => Container(
        color: Colors.grey,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      );