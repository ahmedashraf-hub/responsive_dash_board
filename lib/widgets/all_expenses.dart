import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/widgets/all_expenses_items.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      pading: null,
      child: Column(
        children: [
          AllExpensesHeader(),
          const SizedBox(height: 16),
          Expanded(child: const AllExpensesItems()),
        ],
      ),
    );
  }
}
