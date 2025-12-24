import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/income_cahrt.dart';
import 'package:responsive_dash_board/widgets/income_details.dart';

class IncoomeSectionBody extends StatelessWidget {
  const IncoomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750
        ? const SizedBox()
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeCahrt()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
