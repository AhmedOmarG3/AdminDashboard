import 'package:flutter/material.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/card_and_transaction_history_section.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/incom_section.dart';

class MyCardTransactionsAndIncomeSection extends StatelessWidget {
  const MyCardTransactionsAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [CardAndTransactionHistorySection(), IncomeSection()],
      ),
    );
  }
}


