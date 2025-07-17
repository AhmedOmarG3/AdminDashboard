import 'package:flutter/material.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/custom_buton.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/text_field_item.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFieldItem(
                title: 'Customer name',
                hint: ' Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TextFieldItem(
                title: 'Customer Email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),

        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TextFieldItem(
                title: 'Item Name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TextFieldItem(hint: 'USD', title: 'Item count'),
            ),
          ],
        ),

        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButon(
              border: 0,
              textColor: Color(0xff4EB7F2),
              backgroundColor: Colors.white,
              title: 'Add more details',
            ),
            CustomButon(
              textColor: Colors.white,
              backgroundColor: Color(0xff4EB7F2),
              title: 'Send Money',
            ),
          ],
        ),
      ],
    );
  }
}
