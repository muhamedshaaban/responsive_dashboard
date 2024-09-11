import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import '../utils/assets.dart';
import 'custom_drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> drawerItems = const [
    DrawerItemModel(title: 'Dashboard', image: Assets.iconsDashboard),
    DrawerItemModel(title: 'My Transaction', image: Assets.iconsTrans),
    DrawerItemModel(title: 'Statistics', image: Assets.iconsStats),
    DrawerItemModel(title: 'Wallet Account', image: Assets.iconsWallet),
    DrawerItemModel(title: 'My Investments', image: Assets.iconsInvestments),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CustomDrawerItem(
              drawerItemModel: drawerItems[index],
              isActive: selectedIndex == index,
            ),
          ),
        );
      },
    );
  }
}
