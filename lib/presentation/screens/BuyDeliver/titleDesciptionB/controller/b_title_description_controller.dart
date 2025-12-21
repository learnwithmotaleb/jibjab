import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BTitleDescriptionController extends GetxController{

  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  final int titleMax = 25;
  final int descriptionMax = 500;

  /// Rx counters
  final titleCount = 0.obs;
  final descriptionCount = 0.obs;

  @override
  void onInit() {
    super.onInit();

    titleController.addListener(() {
      titleCount.value = titleController.text.length;
    });

    descriptionController.addListener(() {
      descriptionCount.value =
          descriptionController.text.length;
    });
  }


}