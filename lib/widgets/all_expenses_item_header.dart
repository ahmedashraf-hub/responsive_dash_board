import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageColor,
    this.imageBackColor,
  });

  final String image;
  final Color? imageColor, imageBackColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: imageBackColor ?? Color(0XFFFAFAFA),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                imageColor ?? Color(0xff4eb7f2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.keyboard_arrow_right,
            size: 24,
            color: imageColor == null ? Color(0XFF046061) : Colors.white,
          ),
        ),
      ],
    );
  }
}
