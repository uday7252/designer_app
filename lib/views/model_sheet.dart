import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

import '../model/data.dart';
import '../components/bottom_elevated_button.dart';
import '../components/build_image.dart';
import '../components/imageviewer.dart';
import '../theme/color.dart';

// ignore: must_be_immutable
class ModalBottomSheet extends StatefulWidget {
  int index;
  int activeIndex;
  ModalBottomSheet({
    required this.activeIndex,
    required this.index,
    super.key,
  });

  @override
  State<ModalBottomSheet> createState() => _ModalBottomSheetState();
}

class _ModalBottomSheetState extends State<ModalBottomSheet> {
  @override
  Widget build(BuildContext context) {
    final image = DataList[widget.index].imageList[widget.index];
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white, actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              color: Colors.black,
            ))
      ]),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 200,
                        child: buildImage(image, widget.index, context)),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Prestige Lakeside Hbitate villa 5BHK Devasthanagalu',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0),
                      child: Text(
                        'Bengaluru Karnataka | 2022',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        ExpansionTile(
                          textColor: Colors.black,
                          iconColor: Colors.black,
                          leading: const CircleAvatar(
                            radius: 48,
                            backgroundColor: secondaryColor,
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/8585444/pexels-photo-8585444.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260'),
                          ),
                          title: const Text(
                            'Miracle Mango',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 5,
                              ),
                              const Text('Interior Designer & Decorator',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12)),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: List.generate(
                                        5,
                                        (index) => const Icon(
                                              Icons.star,
                                              color: secondaryColor,
                                              size: 13,
                                            )),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    '167 reviews',
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  )
                                ],
                              )
                            ],
                          ),
                          initiallyExpanded: true,
                          expandedCrossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 16),
                              child: Text("Project Details",
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                  textAlign: TextAlign.left),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            ListTile(
                              leading: SvgPicture.asset(
                                  'assets/icons/straighten.svg',
                                  height: 14.67,
                                  width: 8),
                              title: const Text(
                                'Project title',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                              subtitle: const Text(
                                'Prestige Lakeside Hbitate villa 5BHK Devasthanagalu',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                            ),
                            // const SizedBox(
                            //   height: 5,
                            // ),
                            ListTile(
                              leading: SvgPicture.asset('assets/icons/pin.svg',
                                  height: 14.67, width: 8),
                              title: const Text(
                                'Project title',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                              subtitle: const Text(
                                'Bengaluru Karnataka',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                            ),
                            // const SizedBox(
                            //   height: 5,
                            // ),
                            ListTile(
                              leading: SvgPicture.asset(
                                  'assets/icons/dollar.svg',
                                  height: 14.67,
                                  width: 8),
                              title: const Text(
                                'Project title',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14),
                              ),
                              subtitle: const Text(
                                '20,00,001 - 50,00,000',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GridView.count(
                        mainAxisSpacing: 14,
                        shrinkWrap: true,
                        crossAxisCount: 3,
                        children: List.generate(
                            5,
                            (index) => GestureDetector(
                                  onTap: () => Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Imageviewer())),
                                  child: Image.network(
                                      'https://images.pexels.com/photos/8585444/pexels-photo-8585444.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260'),
                                ))),
                  ],
                ),
              ),
            ),
            BottomElevatedButton(),
          ],
        ),
      ),
    );
  }
}
