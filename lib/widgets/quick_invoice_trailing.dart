import 'package:flutter/material.dart';

import 'quick_invoice_custom_button.dart';

class QuickInvoiceCustomButtons extends StatelessWidget {
  const QuickInvoiceCustomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Expanded(
          child: CustomButton(
        textColor: Color(0xff4EB7F2),
        text: 'Add more details',
        backgroundColor: Colors.white,
      )),
      SizedBox(
        width: 24,
      ),
      Expanded(
          child: CustomButton(
        textColor: Colors.white,
        text: 'Send Money',
        backgroundColor: Color(0xff4EB7F2),
      )),
    ]);
  }
}
