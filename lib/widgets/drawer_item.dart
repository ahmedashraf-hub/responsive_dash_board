import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:svg_flutter/svg_flutter.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel});

  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ListTile(
        leading: SvgPicture.asset(drawerItemModel.image),
        title: Text(drawerItemModel.title, style: AppStyles.styleMedium16),
      ),
    );
  }
}
