import 'package:flutter/material.dart';

import '../theme/color.dart';

class LocationContainer extends StatelessWidget {
  const LocationContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color:secondaryColor.withOpacity(.3),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Get started with Local Professionals",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(

                color: primaryColor),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Find the best Professional in your location now",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(

                color: primaryColor),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Expanded(
                child: SizedBox(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: whiteColor,
                      contentPadding: EdgeInsets.only(top: 2),
                      prefixIcon: Icon(
                        Icons.location_pin,
                        color: blackColor,
                      ),
                      hintText: "Pincode",
                      hintStyle: TextStyle(color: blackColor),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4), // <-- Radius
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "GET STARTED",
                  style: TextStyle(color: whiteColor),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
