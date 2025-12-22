import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/presentation/screens/AddNewOrder/wilPay/controller/will_pay_controller.dart';
import 'package:jibjab/presentation/screens/details/widget/top_bar.dart';
import 'package:jibjab/presentation/widgets/app_button/app_button.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';
import 'package:jibjab/utils/static_strings/static_strings.dart';

import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../widgets/customAlertDialog/custome_alert_dialog.dart';
import '../controller/g_will_pay_controller.dart';
import '../widget/custome_alert_dailog.dart';

class GWillPayScreen extends StatefulWidget {
  const GWillPayScreen({super.key});

  @override
  State<GWillPayScreen> createState() => _GWillPayScreenState();
}

class _GWillPayScreenState extends State<GWillPayScreen> {
  final controller = Get.find<GWillPayController>();

  OutlineInputBorder _border() => OutlineInputBorder(
    borderRadius: BorderRadius.circular(Dimensions.r(12)),
    borderSide: BorderSide(color: AppColors.primaryColor),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(height: Dimensions.h(16)),
              TopBar(title: AppStrings.iWillPay.tr),
              SizedBox(height: Dimensions.h(40)),
              Text(
                AppStrings.otherUsersHavePaidAround.tr,
                style: AppFonts.regular16.copyWith(
                  color: AppColors.blackColorOrginal,
                ),
              ),

              SizedBox(height: Dimensions.h(40)),

              Text(AppStrings.yourPayment.tr, style: AppFonts.medium16),

              SizedBox(height: Dimensions.h(16)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  controller: controller.priceController,
                  decoration: InputDecoration(
                    hintText: AppStrings.enterPrice.tr,
                    counterText: "",
                    border: _border(),
                    enabledBorder: _border(),
                    focusedBorder: _border(),
                    contentPadding: EdgeInsets.all(Dimensions.w(12)),
                  ),
                ),
              ),
              SizedBox(height: Dimensions.h(60)),

              GestureDetector(
                onTap: ()async{
                  String? input = await CustomInputDialog.show(
                    context: context,
                    title: "Redeem",
                    body: "Enter campaign code to redeem",
                    hintText: "Add campaign code here...",
                  );

                  if (input != null && input.isNotEmpty) {
                    print("User entered: $input");
                  }

                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    border: Border.all(
                      width: 1,
                      color: AppColors.grayColorAddNewPostScreen,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      AppStrings.doYouHaveCampaignCode.tr,
                      style: AppFonts.medium16.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),

              AppButton(text: AppStrings.continueButton.tr, onPressed: () {
                Get.toNamed(RoutePath.gDetails);
              }),
              SizedBox(height: Dimensions.h(100)),
            ],
          ),
        ),
      ),
    );
  }
}
