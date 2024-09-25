import 'package:flutter/widgets.dart';

import 'my_card_transaction_history_header.dart';
import 'my_card_transaction_list_view.dart';

class TransactionHistoryWidget extends StatelessWidget {
  const TransactionHistoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCardTransactionHistoryHeader(),
        SizedBox(
          height: 16,
        ),
        TransactionHistoryListView(),
      ],
    );
  }
}
