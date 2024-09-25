import 'package:flutter/material.dart';

import 'quick_invoice_title_text_field.dart';

class QuickInvoiceForms extends StatelessWidget {
  const QuickInvoiceForms({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: QuickInvoiceTitlTextField(
                title: 'Customer name',
                hintText: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: QuickInvoiceTitlTextField(
                title: 'Customer email',
                hintText: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: QuickInvoiceTitlTextField(
                title: 'Item name',
                hintText: 'Type item name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: QuickInvoiceTitlTextField(
                title: 'Item mount',
                hintText: 'USD',
              ),
            ),
          ],
        )
      ],
    );
  }
}
