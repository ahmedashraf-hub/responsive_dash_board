import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/my_cards_page_view.dart';

class MyCardsSection extends StatelessWidget {
  const MyCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My card', style: AppStyles.styleSemiBold20),
        const SizedBox(width: 24),
        const MyCardsPageView(),
      ],
    );
  }
}
