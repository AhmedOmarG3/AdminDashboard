import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resposive_dashboard/core/utils/app_images.dart';
import 'package:resposive_dashboard/core/utils/styles.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/all_expenses_header.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/custom_drwar.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/expenses_icon_row.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: CustomDrwar()),
        SizedBox(width: 20),
        Expanded(flex: 3, child: AllExpenses()),
        SizedBox(width: 20),
        Expanded(flex: 2, child: Container(color: Colors.red)),
      ],
    );
  }
}

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),

        child: Column(
          children: [
            AllExpensesHeader(),
            SizedBox(
              height: 220,

              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [ExpensesItem(), ExpensesItem(), ExpensesItem()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 160,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpensesIconRow(),
          SizedBox(height: 20),
          Text(
            'Balance',
            style: AppStyles.styleSemiBold16(
              context,
            ).copyWith(color: Colors.white),
          ),
          SizedBox(height: 5),
          Text(
            'April 2022',
            style: AppStyles.styleRegular14(
              context,
            ).copyWith(color: Colors.white),
          ),
          SizedBox(height: 5),
          Text(
            '\$20,129',
            style: AppStyles.styleSemiBold24(
              context,
            ).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
