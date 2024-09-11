import 'package:flutter/material.dart';

import '../models/user_info_model.dart';
import '../utils/assets.dart';
import 'user_info_list_tile.dart';

class QuickInvoiceTransactionListView extends StatelessWidget {
  const QuickInvoiceTransactionListView({super.key});

  static const List<UserInfoModel> items = [
    UserInfoModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar3),
    UserInfoModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar2),
    UserInfoModel(
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail',
        image: Assets.imagesAvatar3)
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((item) {
          return IntrinsicWidth(child: UserInfoListTile(userInfoModel: item));
        }).toList(),
      ),
    );

    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       itemCount: items.length,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //             child: UserInfoListTile(userInfoModel: items[index]));
    //       }),
    // );
  }
}
