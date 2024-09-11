import 'package:flutter/material.dart';

import '../models/all_exp_card_model.dart';
import 'active_and_inactive_all_exp_item.dart';

class AllExpItem extends StatelessWidget {
  const AllExpItem({
    super.key,
    required this.itemModel,
    required this.isSelected,
  });
  final AllExpItemModel itemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpItem(itemModel: itemModel)
        : InActiveAllExpItem(itemModel: itemModel);
  }
}
