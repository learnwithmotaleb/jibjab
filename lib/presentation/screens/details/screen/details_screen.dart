
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:jibjab/core/routes/route_path.dart';

import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';
import '../../../../utils/dimensions/dimensions.dart';
import '../../../../utils/static_strings/static_strings.dart';
import '../../../../utils/assets_image/app_images.dart';

import '../../../widgets/app_button/app_button.dart';
import '../../AddNewOrder/wilPay/widget/custome_alert_dailog.dart';
import '../widget/info_row.dart';
import '../widget/image_with_price.dart';
import '../widget/top_bar.dart';
import '../widget/horizontal_image_selector.dart';
import '../widget/info_alert_box.dart';
import '../widget/circle_rating_widget.dart';
import '../widget/nearby_item_card.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

  final List<Map<String, dynamic>> nearByList = [
    {
      "title": "Small Bag",
      "price": 25,
      "image": AppImages.detailsImage,
      "icon": Icons.shopping_cart_outlined,
    },
    {
      "title": "Boy",
      "price": 25,
      "image": AppImages.nearByImage,
      "icon": Icons.shopping_cart_outlined,
    },
    {
      "title": "Sonia",
      "price": 33,
      "image": AppImages.motalebProfile,
      "icon": Icons.shopping_cart_outlined,
    },
  ];

  final sizeList = [
    {"label": "S", "image": AppImages.detailsImage},
    {"label": "M", "image": AppImages.detailsImage},
    {"label": "L", "image": AppImages.detailsImage},
    {"label": "XL", "image": AppImages.detailsImage},
  ];

  final Set<Marker> mapMarkers = {
    Marker(
      markerId: MarkerId("pickup"),
      position: LatLng(23.8150, 90.4250),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    ),
    Marker(
      markerId: MarkerId("drop"),
      position: LatLng(23.7800, 90.4000),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
    ),
  };

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// 🔹 Reusable Top Header
              TopBar(title: AppStrings.detailsPage.tr),

              const SizedBox(height: 20),

              /// 🔹 Big Image + Price Overlay
              ImageWithPrice(
                image: AppImages.detailsImage,
                price: "1250",
                height: screenWidth * 0.58,
              ),

              const SizedBox(height: 20),

              /// 🔹 Title + Description
              Column(
                children: [
                  Row(
                    children: [
                      Text("${AppStrings.title.tr}: ",
                          style: AppFonts.medium16.copyWith(
                            color: AppColors.primaryColor,
                            fontSize: 16,
                          )
                      ),
                      Text(" Gaming Chair".tr,
                          style: AppFonts.medium16.copyWith(
                            color: AppColors.blackColor,
                            fontSize: 16,
                          )
                      ),

                    ],
                  )
                ],
              ),

              const SizedBox(height: 10),

              Column(
                children: [
                  Row(
                    children: [
                      Text("${AppStrings.description.tr}: ",
                          style: AppFonts.medium16.copyWith(
                            color: AppColors.primaryColor,
                            fontSize: 16,
                          )
                      ),
                      Text("Jibjab is your ".tr,
                        style: AppFonts.medium16.copyWith(
                          color: AppColors.blackColor,
                          fontSize: 16,



                        )
                      ),


                    ],
                  ),
                  Text("your all-in-one delivery whether you need to move items.".tr,
                    style: AppFonts.medium16.copyWith(
                      color: AppColors.blackColor,
                      fontSize: 16,



                    ),
                    softWrap: true,
                  ),
                ],
              ),

              const SizedBox(height: 20),

              /// 🔹 Size Selector
              HorizontalImageSelector(sizeList: sizeList),

              const SizedBox(height: 20),

              /// 🔹 Info Alert Box
              InfoAlertBox(text: AppStrings.advertiserWillNotBeAb.tr),

              const SizedBox(height: 20),

              /// 🔹 Info Rows
              InfoRow(label: AppStrings.orderPriority.tr, value: AppStrings.pickupNow.tr),
              InfoRow(label: AppStrings.deliveryAddress.tr, value: AppStrings.deliveryAddressBody.tr),
              InfoRow(label: AppStrings.pickupAddress.tr, value: AppStrings.pickupAddressBody.tr),

              const SizedBox(height: 20),

              /// 🔹 Map Image
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  AppImages.mapPicture,
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 20),

              /// 🔹 Advertiser section
              Text(
                AppStrings.advertiser.tr,
                style: AppFonts.medium16.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: 17,
                ),
              ),
              const SizedBox(height: 10),

              /// 🔹 Advertiser Profile Row
              Row(
                children: [
                  CircleAvatar(
                    radius: 36,
                    backgroundImage: AssetImage(AppImages.motalebProfile),
                  ),

                  Spacer(),
                  CircleRatingWidget(rating: 2.5,),
                  const SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("2.5",style: AppFonts.medium16,),
                  )
                ],
              ),

              const SizedBox(height: 20),

              /// 🔹 Nearby Items Section
              Text(
                AppStrings.nearby,
                style: AppFonts.medium18.copyWith(
                  color: AppColors.primaryColor,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 16),

              SizedBox(
                height: 160,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: nearByList.length,
                  itemBuilder: (context, index) {
                    return NearbyItemCard(item: nearByList[index]);
                  },
                ),
              ),

              const SizedBox(height: 30),

            SizedBox(height: Dimensions.h(40)),
            GestureDetector(
              onTap: (){
                //================
              },
              child: Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Icon(Icons.share, color: AppColors.primaryColor, size: 24),
                      SizedBox(width: 12),
                      Text(
                        AppStrings.share.tr,
                        style: AppFonts.medium16.copyWith(fontSize: 16),
                      ),
                      Spacer(), // pushes the arrow icon to the far right
                      Icon(Icons.arrow_forward_ios_rounded, color: AppColors.primaryColor, size: 20,fontWeight: FontWeight.bold,),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: Dimensions.h(10)),
            GestureDetector(
              onTap: ()async{
                String? input = await CustomInputDialog.show(
                  context: context,
                  title: "Report",
                  body: "Enter Your Report",
                  hintText: "Enter Here......",
                );

                if (input != null && input.isNotEmpty) {
                  print("User entered: $input");
                }

              },

              child: Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Icon(Icons.info_outline, color: AppColors.primaryColor, size: 24),
                      SizedBox(width: 12),
                      Text(
                        AppStrings.reportAdToJibjab.tr,
                        style: AppFonts.medium16.copyWith(fontSize: 16),
                      ),
                      Spacer(), // pushes the arrow icon to the far right
                      Icon(Icons.arrow_forward_ios_rounded, color: AppColors.primaryColor, size: 20,fontWeight: FontWeight.bold,),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: Dimensions.h(60)),
            AppButton(text: AppStrings.pickUp.tr,
                onPressed: (){
                  Get.toNamed(RoutePath.pay);
                }

            ),

            SizedBox(height: Dimensions.h(100)),






  ],
          ),
        ),
      ),
    );
  }
}



