import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jibjab/presentation/widgets/app_button/app_button.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';
import 'package:jibjab/utils/assets_image/app_images.dart';
import 'package:jibjab/utils/static_strings/static_strings.dart';

import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/dimensions/dimensions.dart';
import 'category_alert_data_widget.dart';

void showCategoryAlert(
    BuildContext context,
    CategoryType type,
    ) {
  final data = categoryAlertMap[type]!;

  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: "Category Alert",
    barrierColor: Colors.black.withOpacity(0.4),
    transitionDuration: const Duration(milliseconds: 250),
    pageBuilder: (_, __, ___) {
      return Center(
        child: Container(
          width: Dimensions.w(346),
          height: Dimensions.h(401),
          padding: EdgeInsets.all(Dimensions.w(16)),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(height: Dimensions.h(18)),

              /// Title
              Text(
                data.topTitle,
                style: AppFonts.regular12.copyWith(
                    decoration: TextDecoration.none
                ),
              ),

              SizedBox(height: Dimensions.h(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Column(
                    children: [
                      Image.asset(data.icon1,),
                      Text(data.text1,style:AppFonts.regular12.copyWith(
                          decoration: TextDecoration.none
                      )),

                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(data.icon2),
                      Text(data.text2,style:AppFonts.regular12.copyWith(
                          decoration: TextDecoration.none
                      )),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(data.icon3),
                      Text(data.text3,style:AppFonts.regular12.copyWith(
                          decoration: TextDecoration.none
                      )),
                    ],
                  ),

                  Column(
                    children: [
                      Image.asset(data.icon4),
                      Text(data.text4,style:AppFonts.regular12.copyWith(
                          decoration: TextDecoration.none
                      )),
                    ],
                  )



                ],
              ),

              SizedBox(height: Dimensions.h(20)),

              /// Center Title
              Text(
                data.centerTitle,
                style: AppFonts.medium20.copyWith(
                    decoration: TextDecoration.none
                )
              ),

              SizedBox(height: Dimensions.h(20)),

              /// Options
              ...data.options.map((item) => _OptionItem(text: item)),

              SizedBox(height: Dimensions.h(20)),
              AppButton(text: AppStrings.continueButton, onPressed:data.onContinue)


            ],
          ),
        ),
      );
    },
    transitionBuilder: (_, anim, __, child) {
      return Transform.scale(
        scale: anim.value,
        child: Opacity(opacity: anim.value, child: child),
      );
    },
  );
}

class _OptionItem extends StatelessWidget {
  final String text;
  const _OptionItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.h(12)),
      child: Row(
        children: [
          Container(
            width: Dimensions.w(12),
            height: Dimensions.w(12),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: Dimensions.w(10)),
          Expanded(
            child: Text(
              text,
              style: AppFonts.regular14.copyWith(
                decoration: TextDecoration.none
              )
            ),
          ),
        ],
      ),
    );
  }
}
