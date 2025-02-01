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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset("lib/assets/bg-mobile.png",
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
