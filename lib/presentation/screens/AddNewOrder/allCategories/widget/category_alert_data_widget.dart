import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';

enum CategoryType { move, buy, remove, giveAway }

class CategoryAlertData {
  final String centerTitle;
  final String topTitle;
  final List<String> options;
  final String icon1;
  final String text1;

  final String icon2;
  final String text2;

  final String icon3;
  final String text3;

  final String icon4;
  final String text4;
  final VoidCallback onContinue;

  CategoryAlertData({
    required this.centerTitle,
    required this.options,
    required this.topTitle,
    required this.icon1,
    required this.text1,
    required this.icon2,
    required this.text2,
    required this.icon3,
    required this.text3,
    required this.icon4,
    required this.text4, required this.onContinue,
  });
}

final Map<CategoryType, CategoryAlertData> categoryAlertMap = {
  CategoryType.move: CategoryAlertData(
    topTitle: 'What do you need help with?',
    centerTitle: "Move and delivery",
    options: [
      "Move anything from A to B",
      "Furniture or appliance move",
      "Office or home shifting",
      "Heavy or large items",
    ],
    icon1: AppImages.smallMove,
    text1: 'Small\nmoves',
    icon2: AppImages.secondHandStand,
    text2: '2nd hand\nstuff',
    icon3: AppImages.store,
    text3: 'From\na store',
    icon4: AppImages.pickup,
    text4: 'Pick up\nlost items ',
    onContinue: () {
      Get.back();
      Get.toNamed(RoutePath.addNewPostScreen);

    },
  ),
  CategoryType.buy: CategoryAlertData(
    topTitle: 'What do you need help with?',
    centerTitle: "Buy and deliver",
    options: [
      "Buy groceries",
      "Purchase electronics",
      "Buy items from shop",
      "Buy and deliver anything",
    ],
    icon1: AppImages.smallMove,
    text1: 'Old\nfurniture',
    icon2: AppImages.secondHandStand,
    text2: "Garden\nWaste",
    icon3: AppImages.store,
    text3: 'Daily\nrecyclables',
    icon4: AppImages.pickup,
    text4: 'General\ndeclutter', onContinue: () {
    Get.back();
    Get.toNamed(RoutePath.selectStore);

  },
  ),
  CategoryType.remove: CategoryAlertData(
    topTitle: 'What do you need help with?',
    centerTitle: "Remove and recycle",
    options: [
      "Remove old furniture",
      "Recycle unused items",
      "Trash or junk removal",
    ],
    icon1: AppImages.smallMove,
    text1: 'Furniture',
    icon2: AppImages.secondHandStand,
    text2: 'Appliances',
    icon3: AppImages.store,
    text3: 'Clothes &\ntoys',
    icon4: AppImages.pickup,
    text4: 'Anything \nof value',
    onContinue: () {
      Get.back();
      Get.toNamed(RoutePath.signup);

    },
  ),
  CategoryType.giveAway: CategoryAlertData(
    topTitle: 'What do you need help with?',
    centerTitle: "Give away",
    options: [
      "Donate items",
      "Give away furniture",
      "Clothes donation",
      "Food or essentials",
    ],
    icon1: AppImages.smallMove,
    text1: 'Furniture',
    icon2: AppImages.secondHandStand,
    text2: 'Appliances',
    icon3: AppImages.store,
    text3: 'Clothes &\ntoys',
    icon4: AppImages.pickup,
    text4: 'Anything \nof value',
    onContinue: () {
      Get.back();
      Get.toNamed(RoutePath.profile);

    },
  ),
};
