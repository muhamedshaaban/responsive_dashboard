import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(DevicePreview(
      enabled: true, builder: (context) => const ResponsiveDashboard()));
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
