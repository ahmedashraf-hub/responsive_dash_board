import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeCahrt extends StatefulWidget {
  const IncomeCahrt({super.key});

  @override
  State<IncomeCahrt> createState() => _IncomeCahrtState();
}

class _IncomeCahrtState extends State<IncomeCahrt> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (event, response) {
          activeIndex = response?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
          value: 15,
          color: const Color(0XFFE2DECD),
          showTitle: false,
          radius: activeIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          value: 20,
          color: const Color(0XFF064061),
          showTitle: false,
          radius: activeIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          value: 25,
          color: const Color(0XFF4EB7F2),
          showTitle: false,
          radius: activeIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          value: 40,
          color: const Color(0XFF208CC8),
          showTitle: false,
          radius: activeIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
