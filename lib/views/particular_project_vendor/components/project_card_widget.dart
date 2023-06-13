import 'package:flutter/material.dart';

class ParticularCardWidget extends StatelessWidget {
  const ParticularCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.29,
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: const DecorationImage(
                          image: AssetImage("assets/pexels-pixabay-261429.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
