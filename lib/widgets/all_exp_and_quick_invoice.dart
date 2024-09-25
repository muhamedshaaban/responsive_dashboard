import 'package:flutter/material.dart';

import 'all_expenses_widget.dart';
import 'quick_invoice.dart';

class AllExpAndQuickInvoiceWidget extends StatelessWidget {
  const AllExpAndQuickInvoiceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice()
      ],
    );
  }
}
