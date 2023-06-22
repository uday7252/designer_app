// ignore: depend_on_referenced_packages
import 'package:carousel_slider/carousel_slider.dart';
import 'package:provider/provider.dart';
import '../provider/carousel_index_provider.dart';
import '/views/image_preview.dart';
import 'package:flutter/material.dart';

import '/components/my_navigation_bar.dart';
import '/components/search_box.dart';

import '../model/data.dart';
import '../components/build_image.dart';
import '../theme/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> clickedStates = [];
  final controller = CarouselController();
  final List<String> imageList = [
    "assets/image/img4.PNG",
    "assets/image/Mask.png",
    "assets/image/Mask.png",
    "assets/image/img4.PNG",
    "assets/image/img3.PNG",
  ];
  int activeIndex = 0;
   Widget buildImageSlider(int index) => CarouselSlider.builder(
        carouselController: controller,
        itemCount: DataList[index].imageList.length,
        itemBuilder: ((context, index, realIndex) {
          final image = DataList[index].imageList[index];
          return buildImage(image, index, context);
        }),
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height * 0.45,
          initialPage: 0,
          onPageChanged: ((indexes, reason) {
            setState(() => activeIndex = indexes);
            Provider.of<CarouselIndexProvider>(context, listen: false)
                .setActiveIndex(indexes);
          }),
          enlargeCenterPage: true,
          viewportFraction: 1,
        ),
      );

  @override
  void initState() {
    super.initState();
    clickedStates = List<bool>.filled(DataList.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _buildBody(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 5, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: SearchBox(),
          ),
          const MyNavigationBar(),
          SafeArea(
            child: SizedBox(
              height: height * 0.75, // Set a fixed height for the ListView
              child: ListView.builder(
                itemCount: DataList.length,
                itemBuilder: (context, index) {
                  final clicked = clickedStates[index];
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>
                                    ImagePreview(index: activeIndex))),
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  SizedBox(
                                    width: width,
                                    child: buildImageSlider(index),
                                  ),
                                  Positioned(
                                    right: 15,
                                    top: 15,
                                    child: TextButton(
                                      onPressed: () {
                                        setState(() {
                                          clickedStates[index] = !clicked;
                                        });
                                      },
                                      child: clicked
                                          ? const Icon(
                                              Icons.favorite_border,
                                              color: Colors.white,
                                              size: 30,
                                              shadows: [
                                                BoxShadow(
                                                  color: Colors.black54,
                                                ),
                                              ],
                                            )
                                          : const Icon(
                                              Icons.favorite,
                                              size: 30,
                                              color: secondaryColor,
                                            ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 20,
                                    top: 20,
                                    child: Container(
                                      width: 50,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        color: Colors.black45,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "${activeIndex + 1} / ${DataList[index].imageList.length}",
                                            style: const TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    left: 20,
                                    bottom: 20,
                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundColor: secondaryColor,
                                      backgroundImage: NetworkImage(
                                        'https://images.pexels.com/photos/8585444/pexels-photo-8585444.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "Andheri Project",
                                    style: TextStyle(
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                  ),
                                  const Text(
                                    "4.7",
                                    style: TextStyle(
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(width: 6),
                                  const Icon(
                                    Icons.star,
                                    color: secondaryColor,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Andheri East, Mumbai",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text.rich(
                                  TextSpan(
                                    text: 'Design by ',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "Goutham Singh",
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: secondaryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
