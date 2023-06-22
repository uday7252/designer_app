// ignore: depend_on_referenced_packages
import 'package:designer_app/components/original_button.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../../theme/color.dart';
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
      // extendBody: true,
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: whiteColor,
        title: const Text(
          'Find Profesional',
          style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: blackColor),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
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
                          height: 22,
                        ),
                        const ListTile(
                          contentPadding: EdgeInsets.symmetric(horizontal: 16),
                          leading: CircleAvatar(
                            child: Icon(Icons.account_circle_outlined),
                          ),
                          title: Text(
                            'Miracle Mango',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          subtitle: Text(
                            'Designer | New Delhi',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.grey),
                          ),
                          trailing:
                              Row(mainAxisSize: MainAxisSize.min, children: [
                            Text(
                              '4.7',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              color: secondaryColor,
                              size: 17,
                            )
                          ]),
                        ),
                        const SizedBox(height: 23),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.work_outline, size: 13),
                                    SizedBox(width: 7.33),
                                    Text(
                                      'Contractor',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    )
                                  ]),
                            ),
                            SizedBox(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.folder_shared_outlined,
                                        size: 13),
                                    SizedBox(width: 7.33),
                                    Text(
                                      'Self-employed',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    )
                                  ]),
                            ),
                            SizedBox(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.access_time_outlined, size: 13),
                                    SizedBox(width: 7.33),
                                    Text(
                                      '15 years',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12),
                                    )
                                  ]),
                            ),
                          ],
                        ),
                        const SizedBox(height: 18.67),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: OriginalButton(
                              text: 'Message',
                              onPressed: () {},
                              color: Colors.black,
                              textColor: whiteColor),
                        )
                        // OutlinedButton(
                        //     style: OutlinedButton.styleFrom(
                        //       side: const BorderSide(color: Colors.black),
                        //       minimumSize: Size(
                        //           MediaQuery.of(context).size.width * 0.8, 50),
                        //     ),
                        //     onPressed: () {},
                        //     child: const Text(
                        //       'Message',
                        //       style: TextStyle(
                        //           color: Colors.black,
                        //           fontFamily: 'Roboto',
                        //           fontWeight: FontWeight.w500,
                        //           fontSize: 16),
                        //     )),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                // margin: const EdgeInsets.symmetric(vertical: 16),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Projects (16)",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto'),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "VIEW ALL",
                              style: TextStyle(
                                  color: secondaryColor,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Container(
                              width: 200,
                              margin:
                                  const EdgeInsets.only(right: 10, bottom: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Image.asset(
                                    "assets/pexels-pixabay-261429.jpg",
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: Text(
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
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: Text(
                                      "10 Photos",
                                      textAlign: TextAlign.justify,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                              fontSize: 14,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                              color: Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    // Text(
                    //   "Do Panche has been an interior design and execution firm based in Banglore for te last ten years",
                    //   textAlign: TextAlign.justify,
                    //   style: Theme.of(context)
                    //       .textTheme
                    //       .titleMedium
                    //       ?.copyWith(fontSize: 14),
                    // ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    // Text(
                    //   "Contact",
                    //   style: Theme.of(context)
                    //       .textTheme
                    //       .titleMedium
                    //       ?.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                    // ),
                    // Text(
                    //   "Do Panche Interiors",
                    //   textAlign: TextAlign.justify,
                    //   style: Theme.of(context)
                    //       .textTheme
                    //       .titleMedium
                    //       ?.copyWith(fontSize: 14),
                    // ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    // Text(
                    //   "Phone Number",
                    //   style: Theme.of(context)
                    //       .textTheme
                    //       .titleMedium
                    //       ?.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                    // ),
                    // Text(
                    //   "09620131348",
                    //   textAlign: TextAlign.justify,
                    //   style: Theme.of(context)
                    //       .textTheme
                    //       .titleMedium
                    //       ?.copyWith(fontSize: 14),
                    // ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    // Text(
                    //   "Location",
                    //   style: Theme.of(context)
                    //       .textTheme
                    //       .titleMedium
                    //       ?.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                    // ),
                    // Text(
                    //   "No-45, 7th Cross, 16 B Main, 4th B Block, Koramangala Extension Behind Koramangala B.D.A Complex, Bengaluru, Karnataka",
                    //   textAlign: TextAlign.justify,
                    //   style: Theme.of(context)
                    //       .textTheme
                    //       .titleMedium
                    //       ?.copyWith(fontSize: 14),
                    // ),
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    // Text(
                    //   "Category",
                    //   style: Theme.of(context)
                    //       .textTheme
                    //       .titleMedium
                    //       ?.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                    // ),
                    // Text(
                    //   "Interior Designers & Decorators",
                    //   textAlign: TextAlign.justify,
                    //   style: Theme.of(context)
                    //       .textTheme
                    //       .titleMedium
                    //       ?.copyWith(fontSize: 14),
                    // ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
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
                                  "Reviews (26)",
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium
                                      ?.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Write Review",
                              style: TextStyle(color: secondaryColor),
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
                    child: const Column(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            // Row(
                            //   crossAxisAlignment: CrossAxisAlignment.start,
                            //   children: [
                            //     const CircleAvatar(
                            //       radius: 25,
                            //       child: Icon(
                            //         Icons.person,
                            //         size: 30,
                            //       ),
                            //     ),
                            //     const SizedBox(
                            //       width: 16,
                            //     ),
                            //     Expanded(
                            //       child: Text(
                            //         "Meenal Agarwal",
                            //         style: Theme.of(context)
                            //             .textTheme
                            //             .titleMedium
                            //             ?.copyWith(
                            //                 fontSize: 16,
                            //                 fontWeight: FontWeight.w600),
                            //       ),
                            //     ),
                            //     Column(
                            //       crossAxisAlignment: CrossAxisAlignment.start,
                            //       children: [
                            //         RatingBar.builder(
                            //           initialRating: 3,
                            //           minRating: 1,
                            //           direction: Axis.horizontal,
                            //           allowHalfRating: true,
                            //           itemCount: 5,
                            //           itemSize: 18,
                            //           itemBuilder: (context, _) => const Icon(
                            //             Icons.star,
                            //             color: Colors.amber,
                            //           ),
                            //           onRatingUpdate: (rating) {
                            //             if (kDebugMode) {
                            //               print(rating);
                            //             }
                            //           },
                            //         ),
                            //         Text(
                            //           "03-May-2023",
                            //           style: Theme.of(context)
                            //               .textTheme
                            //               .titleMedium
                            //               ?.copyWith(
                            //                 fontSize: 12,
                            //               ),
                            //         ),
                            //       ],
                            //     )
                            //   ],
                            // ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: CircleAvatar(
                                child: Icon(Icons.account_circle_outlined),
                              ),
                              title: Text(
                                'Miracle Mango',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                              trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      '4.7',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: secondaryColor,
                                      size: 17,
                                    )
                                  ]),
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 16),
                                child: ReadMoreText(
                                  'Consequat ut ea dolor aliqua laborum tempor Lorem culpa. Commodo veniam sint est mollit proident commodo.Consequat ut ea dolor aliqua laborum tempor Lorem culpa. Commodo veniam sint est mollit proident commodo. ',
                                  trimLines: 2,
                                  colorClickableText: Colors.pink,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: 'Read more',
                                  trimExpandedText: 'Read less',
                                  moreStyle: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )),
                            SizedBox(height: 11),
                            Row(
                              // mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,

                              children: [
                                Text(
                                  'Today at 3:45 pm',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  child: Row(
                                    children: [
                                      Icon(Icons.reply),
                                      SizedBox(width: 5),
                                      Text(
                                        'Reply',
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  child: Row(children: [
                                    Icon(Icons.thumb_up_outlined),
                                    SizedBox(width: 5),
                                    Text(
                                      'Like',
                                      style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14),
                                    )
                                  ]),
                                )
                              ],
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
            ],
          ),
        ),
      ),
      //
    );
  }
}
