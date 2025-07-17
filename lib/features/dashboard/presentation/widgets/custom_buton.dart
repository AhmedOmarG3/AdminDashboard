import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/styles.dart';

class CustomButon extends StatelessWidget {
  const CustomButon({
    super.key,
    required this.backgroundColor,
    required this.title,
    required this.textColor,
    this.border,
  });
  final Color textColor;
  final Color backgroundColor;
  final String title;
  final double? border;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: WidgetStatePropertyAll(0),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(border ?? 10),
            ),
          ),
          backgroundColor: WidgetStatePropertyAll(backgroundColor),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            title,
            style: AppStyles.styleSemiBold18(
              context,
            ).copyWith(color: textColor),
          ),
        ),
      ),
    );
  }
}
