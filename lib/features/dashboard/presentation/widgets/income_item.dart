import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/styles.dart';
import 'package:resposive_dashboard/features/dashboard/data/models/pie_chart_section_model.dart';

class IncomeItem extends StatelessWidget {
  const IncomeItem({super.key, required this.pieChartSectionModel});
  final PieChartSectionModel pieChartSectionModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 8.0,
              width: 8.0,
              decoration: BoxDecoration(
                color: pieChartSectionModel.color,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              pieChartSectionModel.title,
              style: AppStyles.styleRegular16(
                context,
              ).copyWith(color: Color(0xff064061)),
            ),
          ],
        ),

        Text(
          '${pieChartSectionModel.value}%',
          style: AppStyles.styleRegular16(
            context,
          ).copyWith(color: Color(0xff208CC8)),
        ),
      ],
    );
  }
}
