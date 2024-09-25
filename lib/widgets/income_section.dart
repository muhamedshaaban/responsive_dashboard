import 'package:flutter/material.dart';

import 'all_expenses_header.dart';
import 'custom_bcackground_container.dart';
import 'income_section_body.dart';

class IncomeSectionWidget extends StatelessWidget {
  const IncomeSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 12,
      child: Column(
        children: [
          AllExpHeader(
            title: 'Income',
          ),
          SizedBox(
            height: 16,
          ),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
