import 'package:designer_app/components/SignUpTabs/ProjectIdeas-IV/projectDetails.dart';
import 'package:designer_app/theme/color.dart';
import 'package:flutter/material.dart';

class YourProjectsScreen extends StatelessWidget {
  const YourProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Projects',
          style: TextStyle(color: blackColor),
        ),
        backgroundColor: whiteColor,
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          childAspectRatio: 9 / 12,
          crossAxisCount: 2,
          children: [
            firstgrid(context),
            projectGrid('Gautam test project', 5, context),
            projectGrid('Test Project', 3, context)
          ],
        ),
      ),
    );
  }

  Widget firstgrid(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: whiteColor,
              ),
              body: ProjectDetails()))),
      child: const GridTile(
          child: Card(
        elevation: 8,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            Icons.add,
            size: 70,
            color: secondaryColor,
          ),
          SizedBox(height: 20),
          Text(
            'New Project',
            style: TextStyle(fontSize: 18, color: blackColor),
          )
        ]),
      )),
    );
  }

  GridTile projectGrid(String projectName, int photos, BuildContext context) {
    return GridTile(
      footer: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              projectName,
              style: const TextStyle(
                  fontSize: 18, color: blackColor, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              '$photos Photos',
              style: const TextStyle(
                  color: blackColor, fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
      child: Card(
        elevation: 8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                color: secondaryColor,
                child: Icon(
                  Icons.book,
                  size: 70,
                  color: whiteColor,
                ),
              ),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
