import 'package:flutter/material.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/all_expenses.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/ouick_invoice.dart';

class AlleExpensesAndOuickInvoiceSection extends StatelessWidget {
  const AlleExpensesAndOuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [AllExpenses(), OuickInvoice()]);
  }
}
