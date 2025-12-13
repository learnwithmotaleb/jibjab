import 'package:flutter/material.dart';
import '../../../../utils/app_colors/app_colors.dart';
import '../../../../utils/app_fonts/app_fonts.dart';

class HorizontalImageSelector extends StatelessWidget {
  final List sizeList;

  const HorizontalImageSelector({super.key, required this.sizeList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: sizeList.length,
        separatorBuilder: (_, __) => SizedBox(width: 10),
        itemBuilder: (_, index) {
          final item = sizeList[index];
          return Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.asset(item["image"],
                    width: 70, height: 60, fit: BoxFit.cover),
              ),
              Positioned(
                bottom: 4,
                left: 4,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    item["label"],
                    style: AppFonts.regular14.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
