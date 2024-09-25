import 'package:flutter/material.dart';
import 'custom_bcackground_container.dart';
import 'quick_invoice_forms.dart';
import 'quick_invoice_header.dart';
import 'quick_invoice_latest_transaction.dart';
import 'quick_invoice_trailing.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        QuickInvoiceLatestTransaction(),
        Divider(
          height: 48,
          color: Color(0xffF1F1F1),
        ),
        QuickInvoiceForms(),
        SizedBox(
          height: 24,
        ),
        QuickInvoiceCustomButtons()
      ],
    ));
  }
}
