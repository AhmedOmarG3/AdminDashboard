import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text('Quick Invoice', style: AppStyles.styleSemiBold20(context)),

        IconButton(
          style: ButtonStyle(
            shape: WidgetStatePropertyAll(CircleBorder()),
            backgroundColor: WidgetStatePropertyAll(Color(0xffFAFAFA)),
          ),
          onPressed: () {},
          icon: Icon(Icons.add, color: Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
