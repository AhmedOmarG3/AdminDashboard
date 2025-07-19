import 'package:flutter/material.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/custom_dot_indicator.dart';

class CustomDots extends StatelessWidget {
  const CustomDots({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => CustomDotIndicator(isActive: index == currentPageIndex),
      ),
    );
  }
}
