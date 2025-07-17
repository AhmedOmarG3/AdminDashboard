import 'package:flutter/material.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/all_expenses.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/custom_drwar.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/ouick_invoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: CustomDrwar()),

        Expanded(
          flex: 3,
          child: Column(children: [AllExpenses(), OuickInvoice()]),
        ),

        Expanded(flex: 2, child: Container(color: Colors.red)),
      ],
    );
  }
}
