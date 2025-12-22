import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../../../../utils/app_fonts/app_fonts.dart';
import '../../../../../utils/dimensions/dimensions.dart';
import '../../../../../utils/static_strings/static_strings.dart';
import '../../../details/widget/top_bar.dart';
import '../widget/transaction_list_item.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.w(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Dimensions.h(24)),

              /// Top Bar
              TopBar(title: AppStrings.transactionHistory.tr),

              SizedBox(height: Dimensions.h(32)),

              /// Scrollable Content
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Title
                      Text(
                        AppStrings.transactionItemList.tr,
                        style: AppFonts.regular12,
                      ),

                      SizedBox(height: Dimensions.h(12)),


                      /// Privacy Policy List
                      ListView.separated(
                        itemCount: 20,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (_, __) =>
                            SizedBox(height: Dimensions.h(5)),
                        itemBuilder: (context, index) {

                          return TransactionListItem(
                            index: '${index + 1}',
                            date:"Date: 25 Sep 2025",
                              amount: 'Amount: 250\$',
                            transactionID: "TransactionID: TXN123456",
                            status: "Status: Completed",
                            pymentMethod: "Payment Method: Stripe"

                          );
                        },
                      ),

                      SizedBox(height: Dimensions.h(80)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
