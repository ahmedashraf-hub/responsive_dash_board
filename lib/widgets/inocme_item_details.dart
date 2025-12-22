import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/inocme_item_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class InocmeItemDetails extends StatelessWidget {
  const InocmeItemDetails({super.key, required this.inocmeItemDetailsModel});

  final InocmeItemDetailsModel inocmeItemDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
          shape: OvalBorder(),
          color: inocmeItemDetailsModel.dotColor,
        ),
      ),
      title: Text(
        inocmeItemDetailsModel.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        inocmeItemDetailsModel.value,
        style: AppStyles.styleMedium16.copyWith(color: Color(0XFF208CC8)),
      ),
    );
  }
}
