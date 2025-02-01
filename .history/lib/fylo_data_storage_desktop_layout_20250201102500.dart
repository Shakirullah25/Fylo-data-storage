import 'package:flutter/material.dart';
import 'package:fylo_data_storage_component/colors.dart';
import 'package:svg_flutter/svg.dart';

class FyloDataStorageDesktopLayout extends StatelessWidget {
  FyloDataStorageDesktopLayout({super.key});

  final List<Map<String, dynamic>> svgAssets = [
    {"path": "lib/assets/icon-document.svg"},
    {"path": "lib/assets/icon-folder.svg"},
    {"path": "lib/assets/icon-upload.svg"},
  ];

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
            child: SizedBox(
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
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
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
                        const SizedBox(height: 20),
                        Container(
                          width: 15,
                          //height: 15,
                          decoration: BoxDecoration(
                            color: AppColors.paleBlue,
                          ),
                          child: Center(
                            child: svgAssets.map((assets) {
                              return Row(
                                
                              )
                            }),
                          // child: Column(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   mainAxisSize: MainAxisSize.min, // This makes the column only as tall as its children
                         
                          ),
                          // child: SvgPicture.asset(
                          //   "lib/assets/icon-document.svg",
                          //   width: 10,
                          //   height: 10,
                          //   //fit: BoxFit.contain,
                          // ),
                        ),
                        
                      ],
                    ),
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