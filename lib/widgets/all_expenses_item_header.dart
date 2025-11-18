import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: const Color(0XFFFAFAFA),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(child: SvgPicture.asset(image)),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.keyboard_arrow_right, size: 24),
        ),
      ],
    );
  }
}
