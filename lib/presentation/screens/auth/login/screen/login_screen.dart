import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';
import 'package:jibjab/utils/static_strings/static_strings.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../controller/login_controller.dart';
import '../../../../widgets/app_button/app_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Top Header
                    Container(
                      height: 199,
                      width: double.infinity,
                      color: AppColors.primaryColor,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset(AppImages.loginHeaderBackground),
                          ),
                          Positioned(
                            left: 40,
                            bottom: 0,
                            child: Image.asset(
                              AppImages.fi,
                              width: 60,
                              height: 60,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 70),

                    /// Title & Subtitle
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.signIn.tr,
                            style: AppFonts.medium16.copyWith(
                              fontSize: 20,
                              height: 1.2,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            AppStrings.signInSubTitle.tr,
                            style: AppFonts.medium16.copyWith(height: 1.2),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),

                    /// Form
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Form(
                        key: controller.formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// Email
                            Text(AppStrings.email.tr, style: AppFonts.medium16),
                            const SizedBox(height: 8),
                       TextFormField(
                                controller: controller.emailController,
                                focusNode: controller.emailFocus,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: AppStrings.enterYourEmail.tr,
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 14,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                    BorderSide(color: AppColors.primaryColor),
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

                            const SizedBox(height: 16),

                            /// Password
                            Text(AppStrings.password.tr, style: AppFonts.medium16),
                            const SizedBox(height: 8),
                            TextFormField(
                              controller: controller.passwordController,
                              obscureText: controller.isPasswordHidden.value,
                              decoration: InputDecoration(
                                hintText: AppStrings.enterYourPassword.tr,
                                suffixIcon: Obx(() => IconButton(
                                  icon: Icon(
                                    controller.isPasswordHidden.value
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: AppColors.primaryColor,
                                  ),
                                  onPressed: controller.togglePassword,
                                )),

                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 14,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                  BorderSide(color: AppColors.primaryColor),
                                ),

                              ),
                            ),

                            const SizedBox(height: 4),

                            /// Forgot Password
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: (){
                                  Get.toNamed(RoutePath.forget);
                                },
                                child: Text(
                                  AppStrings.forgotPassword.tr,
                                  style: TextStyle(
                                    color: AppColors.blackColor
                                        .withOpacity(0.5),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),

                            /// Login Button
                            AppButton(
                              text: AppStrings.signIn.tr,
                              onPressed: controller.login,
                              height: 52,
                              width: double.infinity,
                            ),
                            const SizedBox(height: 20),

                            /// Divider with text
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  width: 50,
                                  child: Divider(thickness: 1, color: Colors.grey),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text(
                                    AppStrings.signInWith.tr,
                                    style: AppFonts.regular14,
                                  ),
                                ),
                                const SizedBox(
                                  width: 50,
                                  child: Divider(thickness: 1, color: Colors.grey),
                                ),
                              ],
                            ),
                            const SizedBox(height: 18),

                            /// Social Login Buttons
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _socialButton(AppImages.google, () {}),
                                const SizedBox(width: 12),
                                _socialButton(AppImages.facebook, () {}),
                                const SizedBox(width: 12),
                                _socialButton(AppImages.apple, () {}),
                              ],
                            ),
                            const SizedBox(height: 24),

                            /// Sign Up Text
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    AppStrings.dontHaveAnAccount.tr,
                                    style: AppFonts.regular14,
                                  ),
                                  TextButton(
                                    onPressed: controller.signup,
                                    child: Text(
                                      AppStrings.signup.tr,
                                      style: AppFonts.medium16.copyWith(
                                          color: AppColors.primaryColor),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 24),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// Circular Logo Overlay
              Positioned(
                top: 175,
                left: 20,
                child: CircleAvatar(
                  radius: 33.5,
                  backgroundColor: AppColors.whiteColor,
                  child: Image.asset(AppImages.appLogo, fit: BoxFit.contain),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Social login reusable button
  Widget _socialButton(String asset, VoidCallback onTap) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(width: 1, color: AppColors.primaryColor),
      ),
      child: IconButton(
        onPressed: onTap,
        icon: Image.asset(asset, width: 15, height: 15),
      ),
    );
  }
}
