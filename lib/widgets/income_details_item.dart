import 'package:flutter/material.dart';

import '../models/income_item_model.dart';
import '../utils/app_styles.dart';

class IncomeItem extends StatelessWidget {
  const IncomeItem({
    super.key,
    required this.incomeItemModel,
  });

  final IncomeItemModel incomeItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
            color: incomeItemModel.color, shape: const OvalBorder()),
      ),
      title: Text(
        incomeItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeItemModel.progress,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
