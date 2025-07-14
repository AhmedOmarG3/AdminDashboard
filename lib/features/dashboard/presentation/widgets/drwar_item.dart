import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resposive_dashboard/core/utils/styles.dart';
import 'package:resposive_dashboard/features/dashboard/data/models/drwar_item_model.dart';

class DrwarItem extends StatelessWidget {
  const DrwarItem({
    super.key,
    required this.drwarItemModel,
    required this.isActive,
    this.onTap,
  });
  final bool isActive;
  final DrwarItemModel drwarItemModel;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListTile(
          leading: SvgPicture.asset(drwarItemModel.image),
          title: Text(
            drwarItemModel.title,
            style: AppStyles.styleBold16(context).copyWith(
              color: isActive
                  ? const Color(0xFF4EB7F2)
                  : const Color(0xFF064061),
            ),
          ),
          trailing: isActive
              ? Container(width: 3.27, color: Color(0xFF4EB7F2))
              : null,
        ),
      ),
    );
  }
}
