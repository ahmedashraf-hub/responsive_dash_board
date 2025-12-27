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
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: imageBackColor ?? const Color(0XFFFAFAFA),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                      imageColor ?? const Color(0xff4eb7f2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Transform.translate(
          offset: const Offset(12, 0),
          child: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {},
            icon: Icon(
              Icons.keyboard_arrow_right,
              size: 24,
              color: imageColor == null
                  ? const Color(0XFF046061)
                  : Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
