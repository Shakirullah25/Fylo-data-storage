import 'package:flutter/material.dart';
import 'package:fylo_data_storage_component/colors.dart';

class CustomGradientProgressIndicator extends StatelessWidget {
  final double progressValue; // value between 0.0 and 1.0

  const CustomGradientProgressIndicator({
    super.key,
    this.progressValue = 815 / 1000,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // The full width available
      final fullWidth = constraints.maxWidth;

      return Stack(
        children: [
          // Background: Remainder in grey
          Container(
            height: 12,
            width: fullWidth,
            decoration: BoxDecoration(
              color: AppColors.grayishBlue,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          // Foreground: Progress with gradient
          Container(
            height: 10,
            width: fullWidth * progressValue,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFFFF7A85),
                  Color(0xFFD80073), // Your gradient end color
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ],
      );
    });
  }
}
