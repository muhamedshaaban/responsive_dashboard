import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'quick_invoice_latest_transaction_list_view.dart';

class QuickInvoiceLatestTransaction extends StatelessWidget {
  const QuickInvoiceLatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        const QuickInvoiceTransactionListView()
      ],
    );
  }
}
