import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';

Widget shoppingItem({
  required int index,
  required String quantity,
  required VoidCallback onAdd,
}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    decoration: BoxDecoration(
      color: AppColors.whiteColor,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          blurRadius: 6,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Index
          Text(
            '$index',
            style: TextStyle(fontSize: 14, color: AppColors.blackColorOrginal),
          ),

          const SizedBox(width: 12),

          // Quantity Container
          Container(
            width: 100,
            height: 30,
            decoration: BoxDecoration(
              color: AppColors.grayColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                quantity, // "- 1 pc +"
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          const SizedBox(width: 12),

          // Add Button
          GestureDetector(
            onTap: onAdd,
            child: Container(
              height: 26,
              width: 26,
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.add,
                size: 16,
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
