import 'package:flutter/material.dart';
import 'package:resposive_dashboard/core/utils/styles.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/custom_background_container.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/latest_transaction_section.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/quick_invoice_header.dart';

class OuickInvoice extends StatelessWidget {
  const OuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 20),
          LatestTransactionSection(),
          Divider(color: Color(0xffF1F1F1), height: 48, indent: 10),

          TextFieldItem(hint: 'Customer name', title: 'Customer Name'),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        contentPadding: EdgeInsets.all(20),
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

class TextFieldItem extends StatelessWidget {
  const TextFieldItem({super.key, required this.title, required this.hint});
  final String title;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.styleMedium16(context)),
        SizedBox(height: 12),
        CustomTextField(hint: hint),
      ],
    );
  }
}
