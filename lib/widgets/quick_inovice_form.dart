import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

class QuickInoviceForm extends StatelessWidget {
  const QuickInoviceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(title: 'Item name', hint: 'Type Item name'),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: TitleTextField(title: 'Item mount', hint: 'USD'),
            ),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                textColor: Color(0XFF4DB7F2),
                backgroundColor: Colors.transparent,
              ),
            ),
            const SizedBox(width: 24),

            Expanded(child: CustomButton()),
          ],
        ),
      ],
    );
  }
}
