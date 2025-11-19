import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_iamges.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const items = [
    UserInfoModel(
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar1,
    ),
    UserInfoModel(
      title: 'Josua Nunito',
      subtitle: 'Josh Nunito@gmail.com',
      image: Assets.imagesAvatar2,
    ),
    UserInfoModel(
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
      image: Assets.imagesAvatar3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)),
            )
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     itemCount: items.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {

    //       // return IntrinsicWidth(
    //       //   child: UserInfoListTile(userInfoModel: items[index]),
    //       // );
    //     },
    //   ),
    // );
  }
}
