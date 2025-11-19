import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Quick Invoice', style: AppStyles.styleSemiBold20),
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            color: Color(0XFFFAFAFA),
            borderRadius: BorderRadius.circular(24),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.add, color: Color(0XFF4EB7F2)),
          ),
        ),
      ],
    );
  }
}
