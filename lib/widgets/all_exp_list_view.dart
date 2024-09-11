import 'package:flutter/material.dart';

import '../models/all_exp_card_model.dart';
import '../utils/assets.dart';
import 'all_exp_card.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  final List<AllExpItemModel> items = [
    const AllExpItemModel(
        title: 'Balance',
        date: '14 April 2022',
        image: Assets.iconsBalance,
        price: r'$20,129'),
    const AllExpItemModel(
        title: 'Income',
        date: '14 April 2022',
        image: Assets.iconsExpenses,
        price: r'$20,129'),
    const AllExpItemModel(
        title: 'Expenses',
        date: '14 April 2022',
        image: Assets.iconsExpenses,
        price: r'$20,129'),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        if (index == 1) {
          return Expanded(
            child: InkWell(
              onTap: (){updateIndex(index);} ,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: AllExpItem(isSelected: selectedIndex == index, itemModel: item),
              ),
            ),
          );
        } else {
          return Expanded(
            child: InkWell(
              onTap: (){
                updateIndex(index);
              },
              child: AllExpItem(isSelected: selectedIndex == index, itemModel: item)),
          );
        }
      }).toList(),
    );
  }
  void updateIndex(int index){
  setState((){
    selectedIndex = index;
  });
}


}
