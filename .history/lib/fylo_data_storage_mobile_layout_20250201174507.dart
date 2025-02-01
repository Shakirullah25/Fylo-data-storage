import 'package:flutter/material.dart';
import 'package:fylo_data_storage_component/colors.dart';

class FyloDataStorageMobileLayout extends StatelessWidget {
  const FyloDataStorageMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.veryDarkBlue,
      body: Stack(
        children: [
          Image.asset("lib/assets/bg-")
        ],
      ),
    );
  }
}
