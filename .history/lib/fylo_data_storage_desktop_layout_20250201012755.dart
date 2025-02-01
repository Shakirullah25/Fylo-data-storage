import 'package:flutter/material.dart';
import 'package:fylo_data_storage_component/colors.dart';

class FyloDataStorageDesktopLayout extends StatelessWidget {
  const FyloDataStorageDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.veryDarkBlue,
      body: Column(
        children: [
          
          Padding(
            padding: const EdgeInsets.only(bot),
            child: Image.asset(
              "lib/assets/bg-desktop.png",
              width: double.infinity,
              height: 600,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
