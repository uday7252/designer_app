import 'package:designer_app/components/build_indicator.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:palette_generator/palette_generator.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../model/data.dart';
import '../components/build_image.dart';
import '../provider/carousel_index_provider.dart';
import '../provider/professional_index_provider.dart';
import '../theme/color.dart';
import 'model_sheet.dart';

class ImagePreview extends StatefulWidget {
  final int index;

  const ImagePreview({required this.index, Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ImagePreviewState createState() => _ImagePreviewState();
}

class _ImagePreviewState extends State<ImagePreview> {
  Color? backgroundColor;
  final controller = CarouselController();
  late int activeIndex;
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    generateBackgroundColor(widget.index);
  }

  void generateBackgroundColor(int index) {
    final imageProvider = AssetImage(DataList[index].imageList[index]);
    PaletteGenerator.fromImageProvider(imageProvider).then((palette) {
      setState(() {
        backgroundColor = palette.dominantColor?.color;
      });
    });
  }

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  Widget buildImageSlider(int index) {
    return CarouselSlider.builder(
      carouselController: controller,
      itemCount: DataList[index].imageList.length,
      itemBuilder: (context, realIndex, _) {
        final image = DataList[index].imageList[realIndex];
        return buildImage(image, realIndex, context);
      },
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.45,
        initialPage: widget.index,
        onPageChanged: (realindex, _) {
          setState(() {
            activeIndex = realindex;
            generateBackgroundColor(realindex);
          });
        },
        enlargeCenterPage: true,
        viewportFraction: 1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final activeIndex = Provider.of<CarouselIndexProvider>(context).activeIndex;

    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: backgroundColor ?? Colors.grey,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              color: Colors.black,
            ),
          ),
        ],
      ),
      backgroundColor: backgroundColor ?? Colors.grey,
      body: Stack(children: [
        Consumer<CarouselIndexProvider>(builder: (context, provider, _) {
          // final activeIndex = provider.activeIndex;
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: SingleChildScrollView(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 50),
                    SizedBox(
                      height: 448,
                      child: buildImageSlider(widget.index),
                    ),
                  ],
                )),
              ),
              DecoratedBox(
                decoration: const BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.4,
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return ModalBottomSheet(
                                  index: widget.index,
                                  activeIndex: widget.index);
                            }));
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                          ),
                          child: const Text(
                            'More Info',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.05),
                      SizedBox(
                        width: size.width * 0.45,
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(secondaryColor),
                          ),
                          child: const Text(
                            'Save',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        }),
        Positioned(
          top: 100,
          right: 20,
          child: IconButton(
              onPressed: toggleFavorite,
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? secondaryColor : Colors.white,
              )),
        ),
        Positioned(
            bottom: 230,
            left: MediaQuery.of(context).size.width / 2.5,
            child:
                buildIndicator(activeIndex: activeIndex, index: widget.index)),
        Positioned(
          left: 20,
          top: 120,
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
                  "${activeIndex + 1} / ${DataList[widget.index].imageList.length}",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
