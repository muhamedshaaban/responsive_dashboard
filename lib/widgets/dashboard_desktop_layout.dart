import 'package:flutter/material.dart';
import 'all_exp_and_quick_invoice.dart';
import 'custom_drawer.dart';
import 'my_card_and_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(top: 40.0),
                          child: AllExpAndQuickInvoiceWidget(),
                        )),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(child: MyCardAndHistorySection()),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
