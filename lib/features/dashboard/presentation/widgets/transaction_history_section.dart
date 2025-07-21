import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/styles.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/desktop_layout.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/transaction_history_header.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/transaction_list.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            '13 April 2022',
            style: AppStyles.styleMedium16(
              context,
            ).copyWith(color: Color(0xffAAAAAA)),
          ),
        ),

        TransactionList(),
      ],
    );
  }
}
