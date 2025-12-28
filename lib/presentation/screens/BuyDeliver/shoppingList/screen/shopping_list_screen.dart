import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/presentation/widgets/app_button/app_button.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';
import '../../../details/widget/top_bar.dart';
import '../widget/shopping_card_item.dart';

class ShoppingListScreen extends StatefulWidget {
  const ShoppingListScreen({super.key});

  @override
  State<ShoppingListScreen> createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends State<ShoppingListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              SizedBox(height: Dimensions.h(24)),
              TopBar(title: AppStrings.shoppingList.tr),
              SizedBox(height: Dimensions.h(24)),
              shoppingItem(
                index: 1,
                quantity: '- 1 pc +',
                onAdd: () {
                  setState(() {

                  });

                },
              ),
              shoppingItem(
                index: 2,
                quantity: '- 1 pc +',
                onAdd: () {},
              ),
              Spacer(),
              AppButton(text: AppStrings.continueButton.tr, onPressed: (){

                Get.toNamed(RoutePath.bTitleDescription);


              }),
              SizedBox(height: Dimensions.h(100)),


            ],
          ),
        ),
      ),
    );
  }
}
