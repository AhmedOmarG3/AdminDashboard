import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,

        fillColor: Color(0xffFAFAFA),
        border: buildBorder(),
        focusedBorder: buildBorder(),
        enabledBorder: buildBorder(),
        hintText: hint,
        hintStyle: AppStyles.styleRegular16(
          context,
        ).copyWith(color: Color(0xffAAAAAA)),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    );
  }
}
