import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout.dart';

import '../widgets/desktop_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffE5E5E5),
        body: AdaptiveLayout(
            mobileLayout: (context) => const SizedBox(),
            tabletLayout: (context) => const SizedBox(),
            desktopLayout: (context) => const DesktopLayout()));
  }
}
