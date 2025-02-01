import 'package:flutter/material.dart';
import 'package:fylo_data_storage_component/colors.dart';

class FyloDataStorageDesktopLayout extends StatelessWidget {
  const FyloDataStorageDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final double bgImageHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.veryDarkBlue,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Image.asset(
              "lib/assets/bg-desktop.png",
              height: bgImageHeight / 2,
              fit: BoxFit.cover, 
            ),
          ),
        ],
      ),
      // );
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
