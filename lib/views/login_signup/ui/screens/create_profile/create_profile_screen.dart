import 'package:designer_app/provider/professional_index_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../components/SignUpTabs/basicInfoPage-II/basicInfo.dart';
import '../../../../../components/SignUpTabs/BusinessAddress-III/businessAddress.dart';
import '../../../../../components/SignUpTabs/ChooseCategory-I/chooseCategory.dart';
import '../../../../../components/SignUpTabs/ProjectIdeas-IV/projectDetails.dart';
import '../../../../../components/custom_radio_button.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({Key? key}) : super(key: key);
  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    Provider.of<StepProvider>(context).disposePageController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: StepProvider(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'Create Profile',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
          centerTitle: true,
          actions: const [
            Icon(
              Icons.menu,
              color: Colors.black,
            ),
            SizedBox(width: 20),
          ],
          bottom: PreferredSize(
            preferredSize: const Size(double.maxFinite, kToolbarHeight),
            child: CustomStepper(),
          ),
        ),
        body: Builder(builder: (context) {
          return PageView(
              controller: Provider.of<StepProvider>(context, listen: false)
                  .pageController,
              children: [
                const ChooseCategory(),
                BasicInfo(formKey: _formKey),
                BusinessAddress(),
                const ProjectDetails()
              ]);
        }), // Only show the ChooseCategory widget
      ),
    );
  }
}

class CustomStepper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<StepProvider>(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildStep(context, 0, 'Choose Category', provider.visitedSteps),
          _buildStep(context, 1, 'Basic Info', provider.visitedSteps),
          _buildStep(context, 2, 'Business Address', provider.visitedSteps),
          _buildStep(context, 3, 'Project Ideas', provider.visitedSteps),
        ],
      ),
    );
  }

  Widget _buildStep(BuildContext context, int stepNumber, String title,
      List<bool> visitedSteps) {
    final provider = Provider.of<StepProvider>(context);

    return Column(
      children: [
        CustomRadioButton(
          value: visitedSteps[stepNumber],
          groupValue: true,
          onChanged: (bool newValue) {
            provider.currentStep = stepNumber;
            provider.visitedSteps[stepNumber] = true;
          },
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            color: visitedSteps[stepNumber] ? Colors.black : Colors.grey[800],
            fontWeight:
                visitedSteps[stepNumber] ? FontWeight.w500 : FontWeight.normal,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
