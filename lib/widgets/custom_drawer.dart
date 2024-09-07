import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/assets.dart';
import 'drawer_items_list.dart';
import 'user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserInfoListTile(
          title: 'Lekan Okeowo',
          subtitle: 'demo@gmail.com',
          image: Assets.imagesAvatar1,
        ),
        Divider(),
        DrawerItemsListView(),
        Spacer(),
      ],
    );
  }
}
