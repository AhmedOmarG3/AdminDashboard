import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/styles.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/header_icon.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader( {super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppStyles.styleSemiBold20(context)),

        HeaderIcon(),
      ],
    );
  }
}
