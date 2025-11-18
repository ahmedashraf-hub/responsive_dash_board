import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  const CustomBackgroundContainer({
    super.key,
    required this.child,
    this.pading,
  });
  final Widget child;
  final double? pading;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(pading ?? 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
