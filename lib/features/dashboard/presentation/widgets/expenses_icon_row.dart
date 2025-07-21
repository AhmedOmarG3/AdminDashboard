import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExpensesIconRow extends StatelessWidget {
  const ExpensesIconRow({
    super.key,
    required this.image,
    required this.isActive,
  });
  final String image;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isActive ? Color(0xff60BEF3) : Color(0xffFAFAFA),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            image,
            color: isActive ? Colors.white : Color(0xff4EB7F2),
          ),
        ),

        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            textDirection: TextDirection.rtl,
            color: isActive ? Colors.white : Color(0xff064061),
          ),
        ),
      ],
    );
  }
}
