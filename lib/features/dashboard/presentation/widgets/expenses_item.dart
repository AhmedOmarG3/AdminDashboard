import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/styles.dart';
import 'package:resposive_dashboard/features/dashboard/data/models/expenses_model.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/expenses_icon_row.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({
    super.key,
    required this.expensesModel,
    this.onTap,
    required this.isActive,
  });
  final bool isActive;
  final ExpensesModel expensesModel;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,
        margin: const EdgeInsets.only(top: 20),

        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: isActive ? Color(0xff4EB7F2) : Color(0xffF1F1F1),
          ),
          color: isActive ? Color(0xff4EB7F2) : Color(0xffffffff),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpensesIconRow(image: expensesModel.image, isActive: isActive),
            SizedBox(height: 20),
            Text(
              expensesModel.title,
              style: AppStyles.styleSemiBold16(
                context,
              ).copyWith(color: isActive ? Colors.white : Color(0xff064061)),
            ),
            SizedBox(height: 5),
            Text(
              expensesModel.date,
              style: AppStyles.styleRegular14(
                context,
              ).copyWith(color: isActive ? Colors.white : Color(0xffAAAAAA)),
            ),
            SizedBox(height: 5),
            Text(
              expensesModel.amount,
              style: AppStyles.styleSemiBold24(
                context,
              ).copyWith(color: isActive ? Colors.white : Color(0xff4EB7F2)),
            ),
          ],
        ),
      ),
    );
  }
}
