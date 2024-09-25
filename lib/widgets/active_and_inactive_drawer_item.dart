import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(drawerItemModel.title, style: AppStyles.styleSemiBold16(context))),
      leading: SvgPicture.asset(drawerItemModel.image),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(drawerItemModel.title, style: AppStyles.styleBold16(context))),
      leading: SvgPicture.asset(drawerItemModel.image),
      trailing: Container(
        width: 4,
        height: 48,
        decoration: const BoxDecoration(
          color: Color(0xff4EB7F2),
          shape: BoxShape.rectangle,
        ),
      ),
    );
  }
}
