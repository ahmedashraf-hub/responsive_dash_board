import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:svg_flutter/svg_flutter.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.iamgePath,
    required this.title,
    required this.subTitle,
  });
  final String iamgePath, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0XFFFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(iamgePath),
        title: Text(title, style: AppStyles.styleSemiBold16),
        subtitle: Text(subTitle, style: AppStyles.styleRegular12),
      ),
    );
  }
}
