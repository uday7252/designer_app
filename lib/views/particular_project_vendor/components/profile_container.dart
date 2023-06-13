import 'package:flutter/material.dart';
import '../../../theme/color.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 15,
          ),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            "Prestige Lakeside Habitat Villa 5BHK Devasthanagalu",
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w500, fontSize: 24, color: blackColor),
          ),
          Text(
            "Bengaluru, Karnataka | 2020",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w500, fontSize: 16, color: blackColor),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/pexels-pixabay-261429.jpg"),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "De Panache",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: blackColor),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
