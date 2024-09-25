import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class MyCardTransactionHistoryHeader extends StatelessWidget {
  const MyCardTransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Transactions history',
          style: AppStyles.styleSemiBold16(context),
        ),
        const Spacer(),
        Text(
          'See all',
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xff007AFF),
          ),
        ),
      ],
    );
  }
}
