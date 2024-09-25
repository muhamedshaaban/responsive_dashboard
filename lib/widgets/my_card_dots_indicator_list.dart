import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/my_card_dot_indicator.dart';

class MyCardDotsIndicatorList extends StatelessWidget {
  const MyCardDotsIndicatorList({super.key, required this.currentPageIndex});
  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: DotIndicator(isActive: index == currentPageIndex),
        );
      }),
    );
  }
}
