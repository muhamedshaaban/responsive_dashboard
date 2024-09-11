import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'quick_invoice_latest_transaction_list_view.dart';

class QuickInvoiceLatestTransaction extends StatelessWidget {
  const QuickInvoiceLatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
        ),
        SizedBox(
          height: 8,
        ),
        QuickInvoiceTransactionListView()
      ],
    );
  }
}
