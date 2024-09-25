import 'package:flutter/material.dart';
import 'custom_bcackground_container.dart';
import 'income_section.dart';
import 'my_card_header_widget.dart';
import 'my_card_transaction_history.dart';

class MyCardAndHistorySection extends StatefulWidget {
  const MyCardAndHistorySection({
    super.key,
  });

  @override
  State<MyCardAndHistorySection> createState() =>
      _MyCardAndHistorySectionState();
}

class _MyCardAndHistorySectionState extends State<MyCardAndHistorySection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPageIndex = pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 12,
        ),
        CustomBackgroundContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyCardWidget(
                  pageController: pageController,
                  currentPageIndex: currentPageIndex),
              const Divider(
                height: 40,
                color: Color(0xffF1F1F1),
              ),
              const TransactionHistoryWidget()
            ],
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        const IncomeSectionWidget()
      ],
    );
  }
}
