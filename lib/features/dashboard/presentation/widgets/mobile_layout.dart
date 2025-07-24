import 'package:flutter/material.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/alle_expenses_and_ouick_invoice_section.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/desktop_layout.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/my_card_transactions_and_income_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AlleExpensesAndOuickInvoiceSection(),
          MyCardTransactionsAndIncomeSection(),
        ],
      ),
    );
  }
}
