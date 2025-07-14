import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resposive_dashboard/core/utils/app_images.dart';

class ExpensesIconRow extends StatelessWidget {
  const ExpensesIconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Color(0xff60BEF3),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(AppImages.imagesMoneys),
        ),

        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            textDirection: TextDirection.rtl,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
