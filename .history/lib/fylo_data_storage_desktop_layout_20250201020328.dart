import 'package:flutter/material.dart';
import 'package:fylo_data_storage_component/colors.dart';

class FyloDataStorageDesktopLayout extends StatelessWidget {
  const FyloDataStorageDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final double Height = MediaQuery.of(context).size.height;
    final double bgImageWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.veryDarkBlue,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            // left: 0,
            // right: 0,
            child: Container(
              height: bgImageHeight / 2,
                width: bgImageWidth,
              
              child: Image.asset(
                "lib/assets/bg-desktop.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                width: bg,
                decoration: BoxDecoration(
                  color: AppColors.darkBlue,

                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
