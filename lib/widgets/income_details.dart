import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/inocme_item_details_model.dart';
import 'package:responsive_dash_board/widgets/inocme_item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    InocmeItemDetailsModel(
      title: 'Design service',
      value: '40%',
      dotColor: Color(0XFF208CC8),
    ),
    InocmeItemDetailsModel(
      title: 'Design product',
      value: '25%',
      dotColor: Color(0XFF4EB7F2),
    ),
    InocmeItemDetailsModel(
      title: 'Product royalti',
      value: '20%',
      dotColor: Color(0XFF064061),
    ),
    InocmeItemDetailsModel(
      title: 'Other',
      value: '15%',
      dotColor: Color(0XFFE2DECD),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((e) => InocmeItemDetails(inocmeItemDetailsModel: e))
          .toList(),
    );
  }
}
