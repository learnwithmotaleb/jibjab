import 'package:get/get.dart';
import '../presentation/screens/onboarding/controller/onboarding_controller.dart';


class OnboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingController>(() => OnboardingController());
  }
}
