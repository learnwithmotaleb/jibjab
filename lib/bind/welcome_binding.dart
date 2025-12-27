import 'package:get/get.dart';
import '../presentation/screens/welcome/controller/welcome_controller.dart';


class WelcomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(() => WelcomeController());
    //hello i'm Abdul Motaleb
  }
}
