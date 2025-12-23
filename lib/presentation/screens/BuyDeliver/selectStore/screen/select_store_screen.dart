import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../../../../core/routes/route_path.dart';
import '../../../../../utils/app_colors/app_colors.dart';
import '../../../../../utils/app_fonts/app_fonts.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';
import '../../../../widgets/app_button/app_button.dart';
import '../../../AddNewOrder/pickLocation/widget/address_card_widget.dart';
import '../../../details/widget/top_bar.dart';
import '../controller/select_store_controller.dart';
import '../widget/dialog_for_show_map.dart';

class SelectStoreScreen extends StatefulWidget {
  const SelectStoreScreen({super.key});

  @override
  State<SelectStoreScreen> createState() => _SelectStoreScreenState();
}

class _SelectStoreScreenState extends State<SelectStoreScreen> {
  final controller = Get.put(SelectStoreController());

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
              TopBar(title: AppStrings.selectStore.tr),
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

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.recentlyUsedAddresses.tr,
                    style: AppFonts.regular16.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),

                  Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      color: AppColors.grayColorAddNewPostScreen,
                      borderRadius: BorderRadius.circular(4)
                    ),
                    child: Center(
                      child: Text(
                        "123".tr,
                        style: AppFonts.regular16.copyWith(
                          color: AppColors.blackColorOrginal,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: Icon(Icons.arrow_forward_ios_rounded,color: AppColors.blackColorOrginal,size: 18,))

                ],

              ),
              SizedBox(height: Dimensions.h(20)),

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
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (_) => ConfirmDialog(
                            title: 'Confirm Address',
                            message: 'Dhaka-1230, Aqtower 1254',
                            onConfirm: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                          ),
                        );

                      },
                    );
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
