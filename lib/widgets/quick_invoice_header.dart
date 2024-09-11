import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Quick Invoice', style: AppStyles.styleSemiBold20),
        Container(
          width: 32,
          height: 32,
          decoration: const ShapeDecoration(
              shape: OvalBorder(), color: Color(0XFFFAFAFA)),
          child: const Icon(
            Icons.add,
            color: Color(0XFF4EB7F2),
          ),
        ),
      ],
    );
  }
}
