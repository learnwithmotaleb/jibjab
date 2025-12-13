import 'package:get/get.dart';

class ImportantController extends GetxController {
  // Observable map to store checkbox state for each term
  var checkedTerms = <int, bool>{}.obs;

  // Toggle checkbox state
  void toggleCheck(int index, bool value) {
    checkedTerms[index] = value;
  }

  // Optional: Check if all terms are approved
  bool get allChecked => checkedTerms.values.every((v) => v == true);
}
