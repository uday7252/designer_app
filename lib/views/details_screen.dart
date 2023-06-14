import 'package:designer_app/components/build_indicator.dart';
import '/views/get_quote_screen.dart';
import '/components/build_image.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import "package:flutter_rating_bar/flutter_rating_bar.dart" show RatingBar;
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/color.dart';

class DetailsScreen extends StatefulWidget {
  String image;
  int index;
  DetailsScreen({required this.image, required this.index, Key? key})
      : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List<String> imageList = [
    // Add your image URLs here
    "assets/image/img4.PNG",
    "assets/image/Mask.png",
    "assets/image/Mask.png",
    "assets/image/img4.PNG",
    "assets/image/img3.PNG",
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: size.height * 0.3,
                  enableInfiniteScroll: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                ),
                items: imageList.map((imageUrl) {
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }).toList(),
              ),
              Positioned(
                top: 290,
                left: MediaQuery.of(context).size.width / 2.5,
                child: buildIndicator(
                  activeIndex: activeIndex,
                  index: imageList.length,
                ),
              )
            ]),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Minimal Beige Living Room Design",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: SvgPicture.asset(
                            'assets/icons/closecircle.svg',
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RatingBar.builder(
                            initialRating: 0,
                            minRating: 0,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 24.0,
                            unratedColor: Colors.black12,
                            glowColor: Colors.black,
                            glow: true,
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: secondaryColor,
                            ),
                            onRatingUpdate: (rating) {
                              // Handle the updated rating value here
                            },
                          ),
                        ),
                        const Text(
                          "4.7 / 167 reviews",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Details',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w800,
                            fontSize: 18),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text.rich(
                        TextSpan(
                          text: "\u2022 Layout: ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                          children: [
                            TextSpan(
                              text: 'L - shaped kitchen\n',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                              ),
                              children: [
                                TextSpan(
                                  text: "\u2022 Room Dimension: ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: '10 x 10 feet\n',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "\u2022 Style: ",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: 'Contemporary\n',
                                              style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: "\u2022 Colour: \n",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          "1. Base unit: Frosty white\n2. Wall unit: Frosty white\n ",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              "\u2022 Shutter finish\n",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text:
                                                                  '1. Base unit: Laminate in suede finish\n2. Wall unit: Laminate in suede finish\n',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      "\u2022 Countertop Material: ",
                                                                  style:
                                                                      TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                  children: [
                                                                    TextSpan(
                                                                      text:
                                                                          'Corian beige\n',
                                                                      style:
                                                                          TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              "\u2022 Storage Features:",
                                                                          style:
                                                                              TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            DecoratedBox(
              decoration: const BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child:
                    // SizedBox(
                    //   width: size.width * 0.4,
                    //   height: 56,
                    //   child: ElevatedButton(
                    //     onPressed: () {},
                    //     style: ButtonStyle(
                    //       backgroundColor:
                    //           MaterialStateProperty.all(Colors.white),
                    //       shape:
                    //           MaterialStateProperty.all<RoundedRectangleBorder>(
                    //         RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(8),
                    //           side: const BorderSide(color: Colors.black),
                    //         ),
                    //       ),
                    //     ),
                    //     child: const Text(
                    //       'Book Now',
                    //       style: TextStyle(
                    //         color: Colors.black,
                    //         fontFamily: 'Roboto',
                    //         fontWeight: FontWeight.w500,
                    //         fontSize: 16,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    // SizedBox(width: size.width * 0.05),
                    SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const GetQuoteScreen(),
                      ));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(secondaryColor),
                    ),
                    child: const Text(
                      'Get a Quote',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
