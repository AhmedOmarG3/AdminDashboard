import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/styles.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/card_page_view.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/custom_dots.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController controller;
  int currentPageIndex = 0;

  @override
  void initState() {
    controller = PageController();
    controller.addListener(() {
      currentPageIndex = controller.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My Card', style: AppStyles.styleSemiBold20(context)),
        SizedBox(height: 10),
        CardPageView(controller: controller),
        SizedBox(height: 15),
        CustomDots(currentPageIndex: currentPageIndex),
      ],
    );
  }
}
