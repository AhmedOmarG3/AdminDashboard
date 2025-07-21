import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/styles.dart';
import 'package:resposive_dashboard/features/dashboard/data/models/tranaction_model.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/alle_expenses_and_ouick_invoice_section.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/custom_background_container.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/custom_drwar.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/my_card_section.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/transaction_history_header.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: CustomDrwar()),

        Expanded(flex: 7, child: AlleExpensesAndOuickInvoiceSection()),

        Expanded(flex: 5, child: CardAndTransactionHistorySection()),
      ],
    );
  }
}

class CardAndTransactionHistorySection extends StatelessWidget {
  const CardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          MyCardSection(),
          Divider(color: Color(0xffF1F1F1), height: 32, indent: 10),
          TransactionHistorySection(),
        ],
      ),
    );
  }
}

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

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.tranactionModel});
  final TranactionModel tranactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        title: Text(
          tranactionModel.title,
          style: AppStyles.styleSemiBold16(
            context,
          ).copyWith(color: Color(0xff064061)),
        ),
        subtitle: Text(
          tranactionModel.subtitle,
          style: AppStyles.styleRegular16(
            context,
          ).copyWith(color: Color(0xffAAAAAA)),
        ),
        trailing: Text(
          tranactionModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: tranactionModel.isIncome
                ? Color(0xff7DD97B)
                : Color(0xffF3735E),
          ),
        ),
      ),
    );
  }
}
