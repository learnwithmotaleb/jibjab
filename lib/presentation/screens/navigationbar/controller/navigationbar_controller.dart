import 'package:get/get.dart';

class NavigationBarController extends GetxController {
  /// current selected bottom nav index
  RxInt currentIndex = 0.obs;

  /// page change method
  void changePage(int index) {
    currentIndex.value = index;
  }
}
