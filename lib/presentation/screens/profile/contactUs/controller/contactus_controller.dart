import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ContactusController extends GetxController{

  /// Text Controllers
  final emailController = TextEditingController();
  final numberController = TextEditingController();
  final descriptionController = TextEditingController();




  /// Update profile
  void submit() {

  }

  @override
  void onClose() {
    emailController.dispose();
    numberController.dispose();
    descriptionController.dispose();
    super.onClose();
  }



}