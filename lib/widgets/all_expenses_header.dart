import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('All Expenses', style: AppStyles.styleSemiBold20),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: 1, color: Color(0XFFF1F1F1)),
          ),
          child: Row(
            children: [
              const Text('Monthly', style: AppStyles.styleMedium16),
              const SizedBox(width: 18),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.keyboard_arrow_down, size: 24),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
