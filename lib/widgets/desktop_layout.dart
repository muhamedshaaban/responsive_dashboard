import 'package:flutter/material.dart';

import 'all_expenses_widget.dart';
import 'custom_drawer.dart';
import 'quick_invoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              AllExpenses(),
              SizedBox(
                height: 16,
              ),
              QuickInvoice()
            ],
          ),
        )
      ],
    );
  }
}
