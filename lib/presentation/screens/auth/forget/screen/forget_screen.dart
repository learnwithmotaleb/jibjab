import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jibjab/presentation/screens/auth/forget/controller/forget_controller.dart';
import '../../../../../core/routes/route_path.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_fonts/app_fonts.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';
import '../../../../widgets/app_button/app_button.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  late final ForgetController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(ForgetController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.w(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Dimensions.h(20)),

              // Back button & Title
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
                    AppStrings.forgetPassword.tr,
                    style: AppFonts.medium20.copyWith(fontSize: Dimensions.f(20)),
                  ),
                ],
              ),
              SizedBox(height: Dimensions.h(40)),

              // Subtitle
              Center(
                child: Text(
                  AppStrings.forgetPasswordSubTitle.tr,
                  style: AppFonts.regular16.copyWith(fontSize: Dimensions.f(16)),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: Dimensions.h(40)),

              // Instruction / Title
              Center(
                child: Text(
                  AppStrings.forgetPassword.tr,
                  textAlign: TextAlign.center,
                  style: AppFonts.medium24.copyWith(fontSize: Dimensions.f(24)),
                ),
              ),
              SizedBox(height: Dimensions.h(40)),

              // Form
              Form(
                key: controller.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppStrings.email.tr, style: AppFonts.medium16),
                    SizedBox(height: Dimensions.h(8)),
                    TextFormField(
                      controller: controller.emailController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        hintText: AppStrings.enterYourEmail.tr,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: Dimensions.w(16), vertical: Dimensions.h(14)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Dimensions.r(10)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Dimensions.r(10)),
                          borderSide: BorderSide(color: AppColors.primaryColor),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email cannot be empty";
                        }
                        if (!GetUtils.isEmail(value)) {
                          return "Enter a valid email";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: Dimensions.h(60)),

              // Send Code Button
              AppButton(
                text: AppStrings.sendCode.tr,
                onPressed: () {
                  controller.sendCode();

                },
                height: Dimensions.h(52),
                width: double.infinity,
              ),
              SizedBox(height: Dimensions.h(20)),
            ],
          ),
        ),
      ),
    );
  }
}
