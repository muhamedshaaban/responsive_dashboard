import 'package:flutter/material.dart';

import '../models/income_item_model.dart';
import 'income_details_item.dart';

class IncomeDeatails extends StatelessWidget {
  const IncomeDeatails({super.key});

  static const List<IncomeItemModel> items = [
    IncomeItemModel(
        title: 'Design service', progress: '40%', color: Color(0xff064061)),
    IncomeItemModel(
        title: 'Design product', progress: '25%', color: Color(0xff4EB7F2)),
    IncomeItemModel(
        title: 'Product royalti', progress: '20%', color: Color(0xff064061)),
    IncomeItemModel(title: 'Other', progress: '22%', color: Color(0xffE2DECD)),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((item) {
        return IncomeItem(incomeItemModel: item);
      }).toList(),
    );
    // return ListView.builder(
    //     shrinkWrap: true,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return IncomeItem(incomeItemModel: items[index]);
    //     });
  }
}
