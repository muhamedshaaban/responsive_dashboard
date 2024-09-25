import 'package:flutter/material.dart';

import '../models/transaction_model.dart';
import 'my_card_transaction.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const List<TransactionModel> items = [
    TransactionModel(
      title: 'Cash withdrawal',
      date: '12/12/2021',
      amount: '-\$100.00',
      iswithdrawed: true,
    ),
    TransactionModel(
      title: 'Cash withdrawal',
      date: '12/12/2021',
      amount: '-\$100.00',
      iswithdrawed: false,
    ),
    TransactionModel(
      title: 'Cash withdrawal',
      date: '12/12/2021',
      amount: '-\$100.00',
      iswithdrawed: true,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: items.map((item) {
      return TransactionCard(transactionModel: item);
    }).toList());
    // return ListView.builder(
    //     itemCount: items.length,
    //     shrinkWrap: true,
    //     itemBuilder: (context, index) {
    //       return TransactionCard(transactionModel: items[index]);
    //     });
  }
}
