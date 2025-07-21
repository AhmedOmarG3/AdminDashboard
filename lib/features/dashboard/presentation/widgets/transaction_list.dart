import 'package:flutter/material.dart';
import 'package:resposive_dashboard/features/dashboard/data/models/tranaction_model.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/transaction_item.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({super.key});

  static final List<TranactionModel> transactions = [
    TranactionModel(
      title: 'Cash Withdrawal',
      amount: ' \$20,129',
      subtitle: '13 Apr, 2022 ',
      isIncome: false,
    ),
    TranactionModel(
      title: 'Landing Page project',
      amount: ' \$2,000',
      subtitle: '13 Apr, 2022 at 3:30 PM ',
      isIncome: true,
    ),
    TranactionModel(
      title: 'Juni Mobile App project',
      amount: ' \$20,129',
      subtitle: '13 Apr, 2022 at 3:30 PM ',
      isIncome: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: transactions.length,
      itemBuilder: (context, index) =>
          TransactionItem(tranactionModel: transactions[index]),
    );
  }
}
