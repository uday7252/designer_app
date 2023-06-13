import 'dart:developer';

import 'package:flutter/material.dart';

class StepProvider extends ChangeNotifier {
  int currentStep = 0;
  List<bool> visitedSteps = [false, false, false, false];
  late PageController pageController;

  StepProvider() {
    pageController = PageController(
      initialPage: currentStep,
      keepPage: true,
    );
  }

  // void initializePageController() {
  //   pageController = PageController(initialPage: currentStep);
  //   notifyListeners();
  // }

  void disposePageController() {
    pageController.dispose();
  }

  void incrementIndex() {
  log('increment Index called');
  if (currentStep < visitedSteps.length) {
    visitedSteps[currentStep] = true;
  }
  currentStep += 1;


  if (pageController.hasClients && pageController.position != null) {
    pageController.jumpToPage(currentStep);
  } else {
    pageController = PageController(initialPage: currentStep, keepPage: true);
  }

  notifyListeners();
}

}
