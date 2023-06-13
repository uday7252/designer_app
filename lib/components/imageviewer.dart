import 'package:carousel_slider/carousel_slider.dart';
import 'package:designer_app/components/build_indicator.dart';
import 'package:designer_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class Imageviewer extends StatefulWidget {
  const Imageviewer({Key? key}) : super(key: key);

  @override
  State<Imageviewer> createState() => _ImageviewerState();
}

class _ImageviewerState extends State<Imageviewer> {
  int activeIndex = 0;

  final controller = CarouselController();
  bool isfavorite = false;

  bool isLoading = false;

  final List<String> imageList = [
    "assets/image/Mask.png",
    "assets/image/img3.PNG",
    "assets/image/Mask.png",
    "assets/image/Mask.png",
    "assets/image/Mask.png",
  ];

  PaletteGenerator? paletteGenerator; // Declare a PaletteGenerator object

  @override
  void initState() {
    super.initState();
    generatePalette(imageList[0]); // Generate palette for the initial image
  }

  // Method to generate the color palette
  Future<void> generatePalette(String imagePath) async {
    final imageProvider = AssetImage(imagePath);
    paletteGenerator = await PaletteGenerator.fromImageProvider(
      imageProvider,
      size: Size(200, 200), // Adjust the size according to your image
    );
    setState(() {}); // Trigger a rebuild to update the background color
  }

  void toggleFavorite() {
    setState(() {
      isfavorite = !isfavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color? backgroundColor = paletteGenerator?.dominantColor?.color;
    if (backgroundColor == null) {
      backgroundColor =
          Colors.black; // Fallback color if palette generation fails
    }

    return SafeArea(
      child: Material(
        child: Container(
          color: backgroundColor, // Set the background color
          child: Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: buildImageSlider(),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width / 2.5,
                bottom: 100,
                child: buildIndicator(
                    activeIndex: activeIndex, index: imageList.length),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImageSlider() => CarouselSlider.builder(
        carouselController: controller,
        itemCount: imageList.length,
        itemBuilder: (context, index, realIndex) {
          final image = imageList[index];
          generatePalette(image); // Generate palette for the image
          return buildImage(image, index);
        },
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          initialPage: 0,
          onPageChanged: (index, reason) {
            setState(() {
              activeIndex = index;
            });
          },
          enlargeCenterPage: true,
          viewportFraction: 1,
        ),
      );

  Widget buildImage(String image, int index) => Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            right: 20,
            child: IconButton(
              icon: Icon(
                isfavorite ? Icons.favorite : Icons.favorite_border,
                color: isfavorite ? secondaryColor : Colors.white,
              ),
              onPressed: toggleFavorite,
            ),
          ),
          Positioned(
            left: 20,
            top: 210,
            child: Container(
              width: 50,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${activeIndex + 1} / ${imageList.length}",
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}
