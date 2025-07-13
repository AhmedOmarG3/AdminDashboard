import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resposive_dashboard/core/utils/styles.dart';
import 'package:resposive_dashboard/features/dashboard/data/models/drwar_item_model.dart';

class DrwarItem extends StatelessWidget {
  const DrwarItem({super.key, required this.drwarItemModel});

  final DrwarItemModel drwarItemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListTile(
        leading: SvgPicture.asset(drwarItemModel.image),
        title: Text(
          drwarItemModel.title,
          style: AppStyles.styleBold16(context),
        ),
      ),
    );
  }
}
