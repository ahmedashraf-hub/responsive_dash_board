import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_item_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({super.key, required this.inocmeItemDetailsModel});

  final IncomeItemDetailsModel inocmeItemDetailsModel;
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
