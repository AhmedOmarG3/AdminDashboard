import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Transaction History', style: AppStyles.styleSemiBold20(context)),
        Text(
          'See all',
          style: AppStyles.styleRegular16(
            context,
          ).copyWith(color: Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
