import 'package:fl_chart_flutter/fl_chart_flutter.dart';
import 'package:flutter/material.dart';
import 'package:resposive_dashboard/features/dashboard/data/models/pie_chart_section_model.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/all_expenses_header.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/custom_background_container.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/incom_items_list.dart';

class IncomeSection extends StatefulWidget {
  const IncomeSection({super.key});

  @override
  State<IncomeSection> createState() => _IncomeSectionState();
}

class _IncomeSectionState extends State<IncomeSection> {
  int currentIndex = -1;
  List<PieChartSectionModel> pieChartSectionModelList = [
    PieChartSectionModel(
      color: Color(0xff208CC8),
      value: 40,
      title: 'Design service',
    ),
    PieChartSectionModel(
      color: Color(0xff4EB7F2),
      value: 25,
      title: 'Design product',
    ),
    PieChartSectionModel(
      color: Color(0xff064061),
      value: 20,
      title: 'Product royalti',
    ),
    PieChartSectionModel(color: Color(0xffE2DECD), value: 22, title: 'Other'),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          CustomHeader(title: 'Income'),

          Row(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 50 / 20,
                  child: SizedBox(
                    height: 30,
                    child: PieChart(getPieChartData()),
                  ),
                ),
              ),
              Expanded(
                child: IncomItemsList(
                  pieChartSectionModelList: pieChartSectionModelList,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        touchCallback: (p0, touchedSection) {
          currentIndex =
              touchedSection?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: getSections(currentIndex: currentIndex),
    );
  }

  List<PieChartSectionData> getSections({required int currentIndex}) {
    return List.generate(
      4,
      (index) => PieChartSectionData(
        showTitle: false,
        color: pieChartSectionModelList[index].color,
        value: pieChartSectionModelList[index].value,

        radius: index == currentIndex ? 30 : 20,
      ),
    );
  }
}