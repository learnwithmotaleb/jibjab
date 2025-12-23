import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:jibjab/presentation/screens/BuyDeliver/dropLocationB/controller/b_drop_location_controller.dart';

import '../../../../../core/routes/route_path.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_fonts/app_fonts.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';
import '../../../../widgets/app_button/app_button.dart';
import '../../../AddNewOrder/dropLocation/controller/drop_location_controller.dart';
import '../../../AddNewOrder/pickLocation/widget/address_card_widget.dart';
import '../../../details/widget/top_bar.dart';

class BDropLocationScreen extends StatefulWidget {
  const BDropLocationScreen({super.key});

  @override
  State<BDropLocationScreen> createState() => _BDropLocationScreenState();
}

class _BDropLocationScreenState extends State<BDropLocationScreen> {
  final controller = Get.put(BDropLocationController());

  /// Track the selected address
  int selectedIndex = -1;

  /// Example list of addresses
  final List<String> addresses = [
    'Dekker Cl, RM5 Romford',
    'Devonshire Heartland',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.w(16)),
          child: Column(
            children: [
              SizedBox(height: Dimensions.h(24)),
              TopBar(title: AppStrings.dropLocation.tr),
              SizedBox(height: Dimensions.h(24)),

              TextFormField(
                controller: controller.searchController,
                onChanged: controller.onSearchChanged,
                style: AppFonts.regular16,
                decoration: InputDecoration(
                  hintText: AppStrings.searchAddress.tr,
                  hintStyle: AppFonts.regular16.copyWith(
                    color: AppColors.grayColorAddNewPostScreen,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    size: Dimensions.w(22),
                    color: AppColors.primaryColor,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: Dimensions.h(14),
                    horizontal: Dimensions.w(12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimensions.r(8)),
                    borderSide: BorderSide(
                      color: AppColors.grayColorAddNewPostScreen,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimensions.r(8)),
                    borderSide: BorderSide(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: Dimensions.h(20)),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppStrings.recentlyUsedAddresses.tr,
                  style: AppFonts.regular16.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              SizedBox(height: Dimensions.h(12)),

              /// Addresses List
              Expanded(
                child: ListView.builder(
                  itemCount: addresses.length,
                  itemBuilder: (context, index) {
                    return addressCard(
                      title: addresses[index].tr,
                      isSelected: selectedIndex == index,
                      onTap: () {
                        setState(() {
                          selectedIndex = index; // update selection
                        });
                      },
                    );
                  },
                ),
              ),

              Padding(
                padding: EdgeInsets.only(bottom: Dimensions.h(16)),
                child: AppButton(
                  text: AppStrings.continueButton.tr,
                  onPressed: () {
                    // if (selectedIndex != -1) {
                    //   // Do something with selected address
                    //   print('Selected: ${addresses[selectedIndex]}');
                    //
                    //
                    // }
                    Get.toNamed(RoutePath.bDropOffScreen);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
