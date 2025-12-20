import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PickOffController extends GetxController{

  // Text controller for search field
  final TextEditingController searchController = TextEditingController();

  // Observable search text
  RxString searchText = ''.obs;

  // On text change
  void onSearchChanged(String value) {
    searchText.value = value;
  }

  // Clear search
  void clearSearch() {
    searchController.clear();
    searchText.value = '';
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }


}