import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import '../utils/assets.dart';
import 'active_and_inactive_drawer_item.dart';

class SettingAndLogoutDrawer extends StatelessWidget {
  const SettingAndLogoutDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        InActiveDrawerItem(
          drawerItemModel: DrawerItemModel(
            title: 'Setting system',
            image: Assets.iconsSettings,
          ),
        ),
        InActiveDrawerItem(
          drawerItemModel: DrawerItemModel(
            title: 'Logout account',
            image: Assets.iconsLogout,
          ),
        ),
      ],
    );
  }
}
