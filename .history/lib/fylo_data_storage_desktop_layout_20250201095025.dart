import 'package:flutter/material.dart';
import 'package:fylo_data_storage_component/colors.dart';
import 'package:svg_flutter/svg.dart';

class FyloDataStorageDesktopLayout extends StatelessWidget {
  const FyloDataStorageDesktopLayout({super.key});

  final List<Map<String,dynamic>>

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.veryDarkBlue,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            // left: 0,
            // right: 0,
            child: Container(
              height: screenHeight / 2,
              width: screenWidth,
              child: Image.asset(
                "lib/assets/bg-desktop.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(100)),
                child: Container(
                  width: screenWidth * 0.3,
                  height: screenHeight * 0.3,
                  decoration: BoxDecoration(
                    color: AppColors.darkBlue,
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        "lib/assets/logo.svg",
                        color: Colors.white,
                        width: 30,
                        height: 30,
                        fit: BoxFit.contain,
                      ),
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: AppColors.paleBlue,
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            "lib/assets/icon-document.svg",
                            width: 10,
                            height: 10,
                            //fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


/*
SvgPicture.asset(
                          "lib/assets/logo.svg",
                          color: Colors.white,
                          width: 15,
                          height: 15,
                          fit: BoxFit.contain,
                        ),
*/