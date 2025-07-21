import 'package:flutter/material.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/alle_expenses_and_ouick_invoice_section.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/card_and_transaction_history_section.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/custom_drwar.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/incom_section.dart';

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
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [CardAndTransactionHistorySection(), IncomeSection()],
      ),
    );
  }
}


