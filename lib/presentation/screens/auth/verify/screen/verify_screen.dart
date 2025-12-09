import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';
import 'package:jibjab/utils/static_strings/static_strings.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:jibjab/utils/dimensions/dimensions.dart';

import '../controller/verify_controller.dart';
import '../widget/timer_widget.dart';
import 'package:jibjab/presentation/widgets/app_button/app_button.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {

  late final VerifyController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(VerifyController());
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.w(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: Dimensions.h(20)),

              Row(
                children: [
                  IconButton(
                    onPressed: () => Get.back(),
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      size: Dimensions.w(22),
                      color: AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(width: Dimensions.w(80)),
                  Text(
                    AppStrings.verification.tr,
                    style: AppFonts.medium20.copyWith(
                      fontSize: Dimensions.f(20),
                    ),
                  ),
                ],
              ),

              SizedBox(height: Dimensions.h(30)),

              Center(
                child: Text(
                  AppStrings.verifyYourAccount.tr,
                  style: AppFonts.regular20.copyWith(
                    fontSize: Dimensions.f(20),
                  ),
                ),
              ),

              SizedBox(height: Dimensions.h(12)),

              Center(
                child: Text(
                  AppStrings.verifyYourAccountSubTitle.tr,
                  textAlign: TextAlign.center,
                  style: AppFonts.regular14.copyWith(
                    fontSize: Dimensions.f(14),
                  ),
                ),
              ),

              SizedBox(height: Dimensions.h(40)),

              Center(
                child: Image.asset(
                  AppImages.verificationAccountImage,
                  width: Dimensions.w(170),
                  height: Dimensions.h(150),
                ),
              ),

              SizedBox(height: Dimensions.h(40)),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.w(20)),
                child: PinCodeTextField(
                  appContext: context,
                  length: 6,
                  controller: controller.otpController,
                  keyboardType: TextInputType.number,
                  animationType: AnimationType.fade,

                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(Dimensions.r(8)),
                    fieldHeight: Dimensions.h(48),
                    fieldWidth: Dimensions.w(46),

                    borderWidth: 1,
                    activeColor: AppColors.primaryColor,
                    selectedColor: AppColors.primaryColor,
                    inactiveColor: AppColors.primaryColor,
                  ),

                  onCompleted: (v) => print("OTP Completed $v"),
                  beforeTextPaste: (_) => true,
                ),
              ),

              SizedBox(height: Dimensions.h(10)),

              Center(
                child: TimerWidget(
                  onResendCode: controller.resendOtpProcess,
                ),
              ),

              SizedBox(height: Dimensions.h(50)),

              AppButton(
                text: AppStrings.verifyCode.tr,
                onPressed: () {

                  Get.toNamed(RoutePath.forget);

                },
              ),

              SizedBox(height: Dimensions.h(20)),
            ],
          ),
        ),
      ),
    );
  }
}
