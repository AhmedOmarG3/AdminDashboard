import 'package:flutter/material.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/custom_background_container.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/latest_transaction_section.dart';
import 'package:resposive_dashboard/features/dashboard/presentation/widgets/quick_invoice_form.dart';
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

          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
