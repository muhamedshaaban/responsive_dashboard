import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/widgets.dart';

import 'my_card_.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
        children: List.generate(3, (index) {
      return const MyCard();
    }));
  }
}
