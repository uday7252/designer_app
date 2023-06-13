import 'package:flutter/material.dart';
import '../theme/color.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: whiteColor,
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
                    height: MediaQuery.of(context).size.height / 4,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: const DecorationImage(
                          image: AssetImage("assets/pexels-pixabay-261429.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "De Panache",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: blackColor),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.yellow,
                            ),
                            Text(
                              "5.0 (164 Reviews)",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(color: blackColor),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_pin,
                              size: 20,
                              color: blackColor,
                            ),
                            Text(
                              "Bangaluru, Karnataka",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(color: blackColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 76,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: secondaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4), // <-- Radius
                        ),
                      ),
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.mail,
                            color: whiteColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "SEND MESSAGE",
                            style: TextStyle(color: whiteColor),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const Positioned(
                bottom: 150,
                left: 15,
                child: CircleAvatar(
                  radius: 28,
                  child: Icon(Icons.person, size: 30),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
