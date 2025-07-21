import 'package:flutter/material.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/all_expenses_header.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/alle_expenses_and_ouick_invoice_section.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/custom_background_container.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/custom_drwar.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/my_card_section.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/transaction_history_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: CustomDrwar()),

        Expanded(flex: 7, child: AlleExpensesAndOuickInvoiceSection()),

        Expanded(flex: 5, child: MyCardTransactionsAndIncomeSection()),
      ],
    );
  }
}

class MyCardTransactionsAndIncomeSection extends StatelessWidget {
  const MyCardTransactionsAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [CardAndTransactionHistorySection(), IncomeSection()],
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
          Divider(color: Color(0xffF1F1F1), height: 40, indent: 10),
          TransactionHistorySection(),
        ],
      ),
    );
  }
}

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(children: [CustomHeader(title: 'Income')]),
    );
  }
}
