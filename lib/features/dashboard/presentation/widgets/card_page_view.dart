import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/my_card_container.dart';

class CardPageView extends StatelessWidget {
  const CardPageView({super.key, required this.controller});
final PageController controller;
 
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(   
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 5),
          child: MyCardContainer(),
        ),
      ),
    );
  }
}
