import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 8),
      duration: const Duration(milliseconds: 300),

      height: 8.0,
      width: isActive ? 32 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xff4EB7F2) : Color(0xffE8E8E8),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
