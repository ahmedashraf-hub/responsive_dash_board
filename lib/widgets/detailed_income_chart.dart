import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedInocmeChart extends StatefulWidget {
  const DetailedInocmeChart({super.key});

  @override
  State<DetailedInocmeChart> createState() => _DetailedInocmeChartState();
}

class _DetailedInocmeChartState extends State<DetailedInocmeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return PieChart(getChartData());
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (event, response) {
          if (!mounted) return;

          activeIndex = response?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          value: 15,
          color: const Color(0XFFE2DECD),
          title: activeIndex == 0 ? 'Other' : '15%',
          titleStyle: AppStyles.styleSemiBold16.copyWith(
            color: activeIndex == 0 ? null : Colors.white,
          ),
          radius: activeIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 1.2 : null,
          value: 20,
          color: const Color(0XFF064061),
          title: activeIndex == 1 ? 'Product royalti' : '20%',
          titleStyle: AppStyles.styleSemiBold16.copyWith(
            color: activeIndex == 1 ? null : Colors.white,
          ),
          radius: activeIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 2.2 : null,
          value: 25,
          color: const Color(0XFF4EB7F2),
          title: activeIndex == 2 ? 'Design product' : '25%',
          titleStyle: AppStyles.styleSemiBold16.copyWith(
            color: activeIndex == 2 ? null : Colors.white,
          ),
          radius: activeIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.3 : null,
          value: 40,
          color: const Color(0XFF208CC8),
          title: activeIndex == 3 ? 'Design service' : '40%',
          titleStyle: AppStyles.styleSemiBold16.copyWith(
            color: activeIndex == 3 ? null : Colors.white,
          ),
          radius: activeIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
