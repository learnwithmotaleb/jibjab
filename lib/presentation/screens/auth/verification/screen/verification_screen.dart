import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../core/routes/route_path.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_fonts/app_fonts.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';
import '../../../../widgets/app_button/app_button.dart';
import '../../verify/widget/timer_widget.dart';
import '../controller/vefication_controller.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {


  late final VerificationController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(VerificationController());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.w(16)),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: Dimensions.h(20)),

                      // Back & Title
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
                          Expanded(
                            child: Text(
                              AppStrings.verification.tr,
                              style: AppFonts.medium20.copyWith(
                                fontSize: Dimensions.f(20),
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: Dimensions.h(30)),

                      // Subtitle
                      Center(
                        child: Text(
                          AppStrings.verifyYourAccount.tr,
                          style: AppFonts.medium24.copyWith(
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

                      SizedBox(height: Dimensions.h(60)),

                      // OTP Field
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: Dimensions.w(16),vertical:Dimensions.w(5) ),
                        child: PinCodeTextField(
                          appContext: context,
                          length: 6,
                          controller: controller.otpController,
                          focusNode: controller.otpFocus,
                          keyboardType: TextInputType.number,
                          animationType: AnimationType.fade,
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(Dimensions.r(8)),
                            fieldHeight: Dimensions.h(51),
                            fieldWidth: Dimensions.w(50),
                            borderWidth: 1,
                            activeColor: AppColors.primaryColor,
                            selectedColor: AppColors.primaryColor,
                            inactiveColor: AppColors.primaryColor,
                          ),
                          onCompleted: (v) {
                            print("OTP Completed: $v");
                            controller.otpFocus.unfocus();
                          },
                          beforeTextPaste: (_) => true,
                        ),
                      ),

                      SizedBox(height: Dimensions.h(10)),

                      // Timer & Resend
                      Center(
                        child: TimerWidget(
                          onResendCode: controller.resendOtpProcess,
                        ),
                      ),

                      SizedBox(height: Dimensions.h(50)),


                      // Verify Button
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: Dimensions.w(20)),
                        child: AppButton(
                          text: AppStrings.verifyCode.tr,
                          onPressed: () {
                            Get.toNamed(RoutePath.reset);
                          },
                          height: Dimensions.h(52),
                          width: double.infinity,
                        ),
                      ),

                      SizedBox(height: Dimensions.h(20)),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
