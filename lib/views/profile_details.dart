// ignore: depend_on_referenced_packages
import 'package:expandable/expandable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../theme/color.dart';
import '/views/send_message_container.dart';


class ProfileDetailsScreen extends StatefulWidget {
  const ProfileDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProfileDetailsScreen> createState() => _ProfileDetailsScreenState();
}

class _ProfileDetailsScreenState extends State<ProfileDetailsScreen> {
  final ExpandableController expandableController = ExpandableController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/pexels-pixabay-261429.jpg",
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              height: 70,
                            ),
                            Text(
                              "De Panache",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 20,
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    if (kDebugMode) {
                                      print(rating);
                                    }
                                  },
                                ),
                                Text(
                                  "164 Reviwes",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(color: Colors.grey),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 30),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.upload_outlined),
                                      Text("Share"),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.webhook),
                                      Text("Website"),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Positioned(
                          bottom: 170,
                          left: MediaQuery.of(context).size.width / 2 - 65,
                          child: Container(
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration(
                              border: Border.all(color: primaryColor, width: 2),
                              shape: BoxShape.circle,
                              image: const DecorationImage(
                                image: AssetImage(
                                    "assets/pexels-pixabay-261429.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 20,
                          left: 20,
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const CircleAvatar(
                              backgroundColor: primaryColor,
                              child: Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: secondaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(vertical: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "96 Projects",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "VIEW ALL",
                              style: TextStyle(color: secondaryColor),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 200,
                            margin:
                                const EdgeInsets.only(right: 10, bottom: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/pexels-pixabay-261429.jpg",
                                ),
                                Text(
                                  "Prestige Lakeside Habitat Villa 5 BHK Apartment",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                const Spacer(),
                                Text(
                                  "10 Photos",
                                  textAlign: TextAlign.justify,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Text(
                      "Do Panche has been an interior design and execution firm based in Banglore for te last ten years",
                      textAlign: TextAlign.justify,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Contact",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Do Panche Interiors",
                      textAlign: TextAlign.justify,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Phone Number",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "09620131348",
                      textAlign: TextAlign.justify,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Location",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "No-45, 7th Cross, 16 B Main, 4th B Block, Koramangala Extension Behind Koramangala B.D.A Complex, Bengaluru, Karnataka",
                      textAlign: TextAlign.justify,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Category",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Interior Designers & Decorators",
                      textAlign: TextAlign.justify,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontSize: 14),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "164 Reviwes",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                ),
                                RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: 19,
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    if (kDebugMode) {
                                      print(rating);
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: secondaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(4), // <-- Radius
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "REVIEW ME",
                              style: TextStyle(color: whiteColor),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.white,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: Column(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                  radius: 25,
                                  child: Icon(
                                    Icons.person,
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Expanded(
                                  child: Text(
                                    "Meenal Agarwal",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: 18,
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        if (kDebugMode) {
                                          print(rating);
                                        }
                                      },
                                    ),
                                    Text(
                                      "03-May-2023",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            fontSize: 12,
                                          ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: ExpandablePanel(
                                collapsed: const Text(
                                  "After visiting many interior design brands in Bangalore, I can say with certainty that Atreyee's company De Panache is the epitome of creativity and exclusivity in interior design. Her design thinking and expertise are unmatched, and she consistently delivers designs that are not only visually stunning but also highly functional. ",
                                  softWrap: true,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                ),
                                expanded: const Text(
                                  "After visiting many interior design brands in Bangalore, I can say with certainty that Atreyee's company De Panache is the epitome of creativity and exclusivity in interior design. Her design thinking and expertise are unmatched, and she consistently delivers designs that are not only visually stunning but also highly functional. ",
                                  softWrap: true,
                                  textAlign: TextAlign.justify,
                                ),
                                controller: expandableController,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: TextButton(
                                  onPressed: () {
                                    expandableController.expanded =
                                        !expandableController.expanded;
                                    expandableController.notifyListeners();
                                    setState(() {});
                                  },
                                  child: Text(
                                    expandableController.expanded
                                        ? "View less"
                                        : "View more",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                            fontSize: 14,
                                            color: secondaryColor),
                                  )),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                margin: const EdgeInsets.only(bottom: 16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Divider(
                      thickness: 1,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "VIEW ALL 164 REVIEWS",
                          style: TextStyle(color: secondaryColor),
                        )),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          child: Row(
                            children: [
                              const Icon(Icons.book),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Text(
                                "Ideabooks",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      fontSize: 16,
                                    ),
                              )),
                              Row(
                                children: [
                                  Text(
                                    "10",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          fontSize: 16,
                                        ),
                                  ),
                                  const Icon(Icons.arrow_forward_ios)
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(4), // <-- Radius
                              ),
                              side: const BorderSide(color: secondaryColor)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.person_add,
                                color: secondaryColor,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "FOLLOW",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                        fontSize: 16, color: secondaryColor),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const SendMessageContainer(),
    );
  }
}
