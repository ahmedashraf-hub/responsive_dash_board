import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';

class MyCardsPageView extends StatefulWidget {
  const MyCardsPageView({super.key});

  @override
  State<MyCardsPageView> createState() => _MyCardsPageViewState();
}

class _MyCardsPageViewState extends State<MyCardsPageView> {
  late PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpandablePageView(
          scrollDirection: Axis.horizontal,
          controller: controller,
          children: List.generate(3, (index) => const MyCard()),
        ),
        const SizedBox(height: 16),
        SmoothPageIndicator(
          controller: controller,
          count: 3,
          effect: ExpandingDotsEffect(
            dotHeight: 8,
            dotWidth: 8,
            activeDotColor: Color(0xFF4EB7F2),
            dotColor: Color(0XFFE8E8E8),
            expansionFactor: 3,
          ),
          onDotClicked: (index) {
            controller.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          },
        ),
      ],
    );
  }
}
