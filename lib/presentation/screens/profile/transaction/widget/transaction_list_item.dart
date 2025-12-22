import 'package:flutter/cupertino.dart';

import '../../../../../utils/app_fonts/app_fonts.dart';
import '../../../../../utils/dimensions/dimensions.dart';

/// --------------------------------------------
/// Reusable Terms Item Widget
/// --------------------------------------------
class TransactionListItem extends StatelessWidget {
  final String index;
  final String date;
  final String transactionID;
  final String amount;
  final String status;
  final String pymentMethod;


  const TransactionListItem({super.key,
    required this.index,
    required this.date,
    required this.transactionID,
    required this.amount,
    required this.status,
    required this.pymentMethod,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.h(24)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: Dimensions.w(24),
            child: Text(
              index,
              style: AppFonts.regular12,
            ),
          ),
          SizedBox(width: Dimensions.w(8)),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  date,
                  style: AppFonts.regular12,
                ),
                SizedBox(height: Dimensions.h(5)),

                Text(
                  transactionID,
                  style: AppFonts.regular12,
                ),
                SizedBox(height: Dimensions.h(5)),

                Text(
                  amount,
                  style: AppFonts.regular12,
                ),
                SizedBox(height: Dimensions.h(5)),

                Text(
                  status,
                  style: AppFonts.regular12,
                ),
                SizedBox(height: Dimensions.h(5)),

                Text(
                  pymentMethod,
                  style: AppFonts.regular12,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
