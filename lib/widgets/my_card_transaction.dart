import 'package:flutter/material.dart';

import '../models/transaction_model.dart';
import '../utils/app_styles.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
    required this.transactionModel,
  });
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 0,
        color: const Color(0xffFAFAFA),
        child: ListTile(
            title:
                Text(transactionModel.title, style: AppStyles.styleSemiBold16(context)),
            subtitle: Text(
              transactionModel.date,
              style: AppStyles.styleRegular16
                  (context).copyWith(color: const Color(0xffAAAAAA)),
            ),
            trailing: Text(transactionModel.amount,
                style: transactionModel.iswithdrawed
                    ? AppStyles.styleSemiBold20
                        (context).copyWith(color: const Color(0XFFF3735E))
                    : AppStyles.styleSemiBold20
                      (context)  .copyWith(color: const Color(0xff7DD97B)))),
      ),
    );
  }
}
