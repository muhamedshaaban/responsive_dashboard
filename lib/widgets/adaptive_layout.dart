import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  LayoutBuilder build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 350) {
        return mobileLayout(context);
      } else if (constraints.maxWidth < 600) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
