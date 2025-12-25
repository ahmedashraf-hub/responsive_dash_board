import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board/widgets/income_section_header.dart';
import 'package:responsive_dash_board/widgets/income_section_body.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeSectionHeader(),
          const SizedBox(height: 12),
          if (width >= SizeConfig.desktop && width < 1750)
            Expanded(child: DetailedInocmeChart())
          else
            AspectRatio(aspectRatio: 1, child: IncomeSectionBody()),
        ],
      ),
    );
  }
}
