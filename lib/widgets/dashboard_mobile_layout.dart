import 'package:flutter/material.dart';

import 'all_exp_and_quick_invoice.dart';
import 'my_card_and_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpAndQuickInvoiceWidget(),
          SizedBox(
            height: 24,
          ),
          MyCardAndHistorySection()
        ],
      ),
    );
  }
}
