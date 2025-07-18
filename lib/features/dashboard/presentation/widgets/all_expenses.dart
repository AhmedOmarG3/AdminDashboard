import 'package:flutter/material.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/all_expenses_header.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/all_expenses_items_row.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: CustomBackgroundContainer(
        child: Column(children: [AllExpensesHeader(), AllExpensesItemsRow()]),
      ),
    );
  }
}
