import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/my_cards_section.dart';
import 'package:responsive_dash_board/widgets/transiction_history.dart';

class MyCardAndTransictionHistorySection extends StatelessWidget {
  const MyCardAndTransictionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          const MyCardsSection(),
          Divider(height: 40, color: Color(0xffF1F1F1)),
          TransictionHistory(),
        ],
      ),
    );
  }
}
