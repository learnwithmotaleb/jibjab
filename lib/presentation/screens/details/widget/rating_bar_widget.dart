import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';
import '../../../../utils/dimensions/dimensions.dart';
import '../../../../utils/static_strings/static_strings.dart';

class AdvertiserRatingWidget extends StatelessWidget {
  final String name;
  final double rating;
  final String? avatarUrl;
  final String? initials;

  const AdvertiserRatingWidget({
    Key? key,
    required this.name,
    required this.rating,
    this.avatarUrl,
    this.initials,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.advertiser,
            style: AppFonts.mediumBold20,
          ),
          SizedBox(height: Dimensions.h(10)),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Avatar
              CircleAvatar(
                radius: 20,
                backgroundColor: AppColors.primaryColor,
                backgroundImage: avatarUrl != null
                    ? NetworkImage(avatarUrl!)
                    : null,
                child: avatarUrl == null
                    ? Text(
                  initials ?? name.substring(0, 2).toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
                    : null,
              ),

              SizedBox(width: Dimensions.w(12)),

              // Name
              Expanded(
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              // Rating Stars and Number
              Row(
                children: [
                  // Build stars manually
                  ...List.generate(5, (index) {
                    if (index < rating.floor()) {
                      return Icon(
                        Icons.star,
                        color: AppColors.primaryColor,
                        size: 20,
                      );
                    } else if (index == rating.floor() && rating % 1 >= 0.5) {
                      return Icon(
                        Icons.star_half,
                        color: AppColors.primaryColor,
                        size: 20,
                      );
                    } else {
                      return Icon(
                        Icons.star_border,
                        color: Colors.grey[400],
                        size: 20,
                      );
                    }
                  }),

                  SizedBox(width: Dimensions.w(8)),

                  // Rating Number
                  Text(
                    rating.toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Usage:
// AdvertiserRatingWidget(
//   name: "Abdul Motaleb",
//   rating: 3.5,
//   initials: "AM",
// )