import 'package:get/get.dart';
import 'package:jibjab/presentation/screens/auth/verify/controller/verify_controller.dart';
import '../presentation/screens/welcome/controller/welcome_controller.dart';


class VerifyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifyController>(() => VerifyController());
  }
}
