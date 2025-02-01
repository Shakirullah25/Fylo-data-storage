import 'package:flutter/material.dart';
import 'package:fylo_data_storage_component/colors.dart';

class FyloDataStorageDesktopLayout extends StatelessWidget {
  const FyloDataStorageDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.veryDarkBlue,
      body: Stack(
        children: [
        child: Image.asset(
          "lib/assets/bg-desktop.png",
        ]
        ),
      ),
      // body: Stack(
      //   children: [
      //     Align(
      //       alignment: Alignment.bottomCenter,
      //       child: Image.asset(
      //         "lib/assets/bg-desktop.png",
      //         width: double.infinity,
      //         height: 600,
      //         fit: BoxFit.contain,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
