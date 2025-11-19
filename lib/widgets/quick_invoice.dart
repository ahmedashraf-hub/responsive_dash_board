import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/quick_inovice_form.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: const Column(
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(height: 48, color: Color(0XFFF1F1F1)),
          QuickInoviceForm(),
        ],
      ),
    );
  }
}
