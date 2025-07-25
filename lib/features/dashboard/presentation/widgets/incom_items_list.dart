import 'package:flutter/material.dart';
import 'package:resposive_dashboard/features/dashboard/data/models/pie_chart_section_model.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/income_item.dart';

class IncomItemsList extends StatelessWidget {
  const IncomItemsList({super.key, required this.pieChartSectionModelList});
  final List<PieChartSectionModel> pieChartSectionModelList;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: pieChartSectionModelList
          .map((e) => IncomeItem(pieChartSectionModel: e))
          .toList(),
    );
  }
}
