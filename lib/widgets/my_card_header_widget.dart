import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'my_card_dots_indicator_list.dart';
import 'my_card_page_view.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({
    super.key,
    required this.pageController,
    required this.currentPageIndex,
  });

  final PageController pageController;
  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 16,
        ),
        MyCardPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 16,
        ),
        MyCardDotsIndicatorList(
          currentPageIndex: currentPageIndex,
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
