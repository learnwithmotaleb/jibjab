import 'package:flutter/material.dart';
import '../../../../utils/app_fonts/app_fonts.dart';

class NearbyItemCard extends StatelessWidget {
  final Map<String, dynamic> item;

  const NearbyItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              item["image"],
              width: 170,
              height: 160,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 6,
            left: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item["title"], style: AppFonts.regular12),
                Row(
                  children: [
                    Icon(item["icon"], size: 13),
                    SizedBox(width: 4),
                    Text("\$${item["price"]}", style: AppFonts.regular14),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

