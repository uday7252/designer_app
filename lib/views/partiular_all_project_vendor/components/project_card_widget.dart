import 'package:flutter/material.dart';
import '../../../theme/color.dart';


class ParticularCardWidget extends StatelessWidget {
  const ParticularCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.46,
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: primaryColor,
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
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: const DecorationImage(
                            image:
                                AssetImage("assets/pexels-pixabay-261429.jpg"),
                            fit: BoxFit.cover),
                      ),
                      alignment: Alignment
                          .bottomCenter, // This aligns the child of the container
                      child: Container(
                          width: double.infinity,
                          height: 27,
                          color: blackColor,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on_rounded,
                                color: whiteColor,
                                size: 12,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text('Bengaluru, Karnataka, IN',
                                  style: TextStyle(
                                      color: whiteColor, fontSize: 12)),
                            ],
                          ))),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Wrap(
                          children: [
                            Text(
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              "Pretige Classical 3BHk Apartment",
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
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "5 Photos",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(color: blackColor, fontSize: 12),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        )
                      ],
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
