import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider/professional_index_provider.dart';
import '../../icon_container.dart';
import '../../original_button.dart';

class ChooseCategory extends StatelessWidget {
  const ChooseCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stepProvider = Provider.of<StepProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Choose Category',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'Choose your profession and business category',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 16),
          const SelectableGridTile(),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: OriginalButton(
              text: 'Save & Next',
              onPressed: () {
                stepProvider.incrementIndex();
              },
              color: Colors.orange,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class SelectableGridTile extends StatefulWidget {
  const SelectableGridTile({Key? key}) : super(key: key);

  @override
  _SelectableGridTileState createState() => _SelectableGridTileState();
}

class _SelectableGridTileState extends State<SelectableGridTile> {
  int selectedTileIndex = -1;
  List<bool> selectedCategory = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  void selectAny(int index) {
    setState(() {
      selectedCategory[index] = !selectedCategory[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 200,
        child: GridView.count(
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          crossAxisCount: 2,
          shrinkWrap: true,
          childAspectRatio: 11 / 9,
          children: List.generate(6, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedTileIndex = index;
                });
              },
              child: GridTile(
                child: IconContainer(
                  assetName: 'assets/icons/${_getIconAssetName(index)}.svg',
                  text: _getTileText(index),
                  isSelected: selectedCategory[index],
                  onTap: () {
                    selectAny(index);
                    if (kDebugMode) {
                      print(selectedCategory);
                    }
                  },
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  String _getIconAssetName(int index) {
    switch (index) {
      case 0:
        return 'architect';
      case 1:
        return 'interiorDesigner';
      case 2:
        return 'homeConstruction';
      case 3:
        return 'generalContractor';
      case 4:
        return 'civilEngineer';
      case 5:
        return 'landscapeArchitect';
      default:
        return '';
    }
  }

  String _getTileText(int index) {
    switch (index) {
      case 0:
        return 'Architects';
      case 1:
        return 'Interior Designer';
      case 2:
        return 'Home Construction';
      case 3:
        return 'General Contractor';
      case 4:
        return 'Civil Engineer';
      case 5:
        return 'Landscape Architects';
      default:
        return '';
    }
  }
}
