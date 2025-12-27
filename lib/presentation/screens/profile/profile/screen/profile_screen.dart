import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:jibjab/core/routes/route_path.dart';
import 'package:jibjab/presentation/screens/profile/profile/widget/infor_row_profile_widget.dart';
import 'package:jibjab/presentation/widgets/app_button/app_button.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';
import 'package:jibjab/utils/static_strings/static_strings.dart';

import '../../../../../global/language/controller/language_controller.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../widgets/customAlertDialog/custome_alert_dialog.dart';
import '../../../adviser/widget/info_row.dart';
import '../controller/profile_controller.dart';
import '../widget/profile_menu_item.dart';
import '../widget/profile_section_title.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ProfileController controller = Get.put(ProfileController());




  @override
  Widget build(BuildContext context) {
    final lc = LanguageController.to;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.primaryColor,
                      backgroundImage: AssetImage(AppImages.appLogo),
                    ),
                    Text(AppStrings.profile.tr, style: AppFonts.regular16.copyWith(
                      color: AppColors.blackColorOrginal,
                      fontWeight: FontWeight.w500,
                    )),
                    GestureDetector(
                      onTap: (){

                        Get.toNamed(RoutePath.notification);
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.notifications,
                            color: AppColors.primaryColor,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: Dimensions.h(20)),

                Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppColors.profileColor,
                  ),
                  child: Stack(

                    children: [

                      Row(
                        mainAxisAlignment: lc.isEnglish.value ?  MainAxisAlignment.start : MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(AppImages.motalebProfile),
                          SizedBox(width: Dimensions.w(10)),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Abdul Motaleb",style: AppFonts.semiBold14),

                                  SizedBox(height: Dimensions.h(6)),
                                  InfoRowProfile(
                                    icon: Icons.alternate_email,
                                    text: "example@gmail.com",
                                  ),
                                  SizedBox(height: Dimensions.h(8)),
                                  InfoRowProfile(
                                    icon: Icons.phone,
                                    text: "(555) 123-4567",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        right: 1,
                        top: 1,
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(RoutePath.editProfile);
                          },
                          child: Container(
                            width: 120,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                width: 1,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.edit, color: AppColors.primaryColor),
                                SizedBox(width: Dimensions.w(10)),
                                Text(
                                  AppStrings.editProfile.tr,
                                  style: AppFonts.medium10.copyWith(
                                    color: AppColors.primaryColor
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Dimensions.h(30)),

                ProfileMenuTile(
                  icon: Icons.settings,
                  title: AppStrings.accountSetting.tr,
                  onTap: () {
                    Get.toNamed(RoutePath.accountSetting);
                  },
                ),

                SizedBox(height: Dimensions.h(10)),

                ProfileMenuTile(
                  icon: Icons.post_add,
                  title: AppStrings.myPost.tr,
                  onTap: () {
                    Get.toNamed(RoutePath.myPostScreen);
                  },
                ),

                SizedBox(height: Dimensions.h(10)),

                ProfileMenuTile(
                  icon: Icons.timer,
                  title: AppStrings.myAccepted.tr,
                  onTap: () {
                    Get.toNamed(RoutePath.myPostScreen);

                  },
                ),

                SizedBox(height: Dimensions.h(10)),

                ProfileMenuTile(
                  icon: Icons.public,
                  title: AppStrings.publicProfileInfo.tr,
                  onTap: () {
                    Get.toNamed(RoutePath.publicProfile);
                  },
                ),

                SizedBox(height: Dimensions.h(10)),

                ProfileMenuTile(
                  icon: Icons.history,
                  title: AppStrings.history.tr,
                  onTap: () {
                    Get.toNamed(RoutePath.transaction);
                  },
                ),

                SizedBox(height: Dimensions.h(10)),

                ProfileMenuTile(
                  icon: Icons.notifications,
                  title: AppStrings.notification.tr,
                  onTap: () {

                    Get.toNamed(RoutePath.notification);


                  },
                ),

                SizedBox(height: Dimensions.h(10)),

                ProfileMenuTile(
                  icon: Icons.language,
                  title: AppStrings.language.tr,
                  onTap: () {
                    Get.toNamed(RoutePath.languagesSetting);
                  },
                ),

                SizedBox(height: Dimensions.h(10)),

                ProfileSectionTitle(title: AppStrings.more),

                SizedBox(height: Dimensions.h(10)),

                ProfileMenuTile(
                  icon: Icons.question_mark_rounded,
                  title: AppStrings.faq.tr,
                  onTap: () {
                    Get.toNamed(RoutePath.faqs);
                  },
                ),
                SizedBox(height: Dimensions.h(10)),

                ProfileMenuTile(
                  icon: Icons.contact_page_rounded,
                  title: AppStrings.contactUs.tr,
                  onTap: () {
                    Get.toNamed(RoutePath.contactUs);
                  },
                ),
                SizedBox(height: Dimensions.h(10)),

                ProfileMenuTile(
                  icon: Icons.library_books_sharp,
                  title: AppStrings.termsAndCondition.tr,
                  onTap: () {
                    Get.toNamed(RoutePath.termsCondition);
                  },
                ),
                SizedBox(height: Dimensions.h(10)),

                ProfileMenuTile(
                  icon: Icons.privacy_tip_outlined,
                  title: AppStrings.privacyPolicy.tr,
                  onTap: () {
                    Get.toNamed(RoutePath.privacyPolicyScreen);
                  },
                ),
                SizedBox(height: Dimensions.h(10)),

                ProfileMenuTile(
                  icon: Icons.logout,
                  title: AppStrings.logOut.tr,
                  onTap: () {
                    CustomAlertDialog.show(
                      context: context,
                      title: AppStrings.logOut,
                      body: "Are you sure you want to log out?",
                      onYes: () {
                        Get.toNamed(RoutePath.login);
                        // logout logic
                      },
                      onNo: () {
                       Get.back();
                      },
                    );

                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
