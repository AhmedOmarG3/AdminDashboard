import 'package:flutter/material.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/custom_background_container.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/my_card_section.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/transaction_history_section.dart';

class CardAndTransactionHistorySection extends StatelessWidget {
  const CardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          MyCardSection(),
          Divider(color: Color(0xffF1F1F1), height: 30, indent: 10),
          TransactionHistorySection(),
        ],
      ),
    );
  }
}
