

import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AllExpHeader extends StatelessWidget {
  const AllExpHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold16,
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
                width: 1,
                color: Color(0xffF1F1F1),
              ),
            ),
          ),
          child: const Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16,
              ),
              SizedBox(
                width: 12,
              ),
              Icon(
                Icons.keyboard_arrow_down_sharp,
                color: Color(0xff064061),
              ),
            ],
          ),
        )
      ],
    );
  }
}
