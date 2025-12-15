import 'package:flutter/material.dart';
import '../../../../utils/app_colors/app_colors.dart';

class CustomerReviewRating extends StatelessWidget {
  final double rating;
  final Color color;
  final double size;

  const CustomerReviewRating({super.key, required this.rating, required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (i) {
        if (i < rating.floor()) {
          return Icon(Icons.star, color: color, size: size);
        } else if (i == rating.floor() && rating % 1 >= 0.5) {
          return Icon(Icons.star_half, color:color, size: size);
        } else {
          return Icon(Icons.star_border, color: color, size: size);
        }
      }),
    );
  }
}
