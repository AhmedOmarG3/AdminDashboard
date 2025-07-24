import 'package:flutter/material.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/alle_expenses_and_ouick_invoice_section.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/custom_drwar.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/my_card_transactions_and_income_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3, child: CustomDrwar()),

        Expanded(
          flex: 7,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: AlleExpensesAndOuickInvoiceSection(),
          ),
        ),

        Expanded(flex: 5, child: MyCardTransactionsAndIncomeSection()),
      ],
    );
  }
}
