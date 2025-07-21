import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/styles.dart';
import 'package:resposive_dashboard/features/dashboard/data/models/tranaction_model.dart';

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
