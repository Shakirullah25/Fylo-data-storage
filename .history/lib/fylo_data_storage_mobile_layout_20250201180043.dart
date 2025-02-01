import 'package:flutter/material.dart';
import 'package:fylo_data_storage_component/colors.dart';
import 'package:svg_flutter/svg.dart';

class FyloDataStorageMobileLayout extends StatelessWidget {
  FyloDataStorageMobileLayout({super.key});

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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset("lib/assets/bg-mobile.png",
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
                ),
                 ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(100),
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    child: Container(
                      width: screenWidth * 0.25,
                      height: screenHeight * 0.30,
                      decoration: const BoxDecoration(
                        color: AppColors.darkBlue,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 45),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              "lib/assets/logo.svg",
                              // ignore: deprecated_member_use
                              color: Colors.white,
                              width: 27,
                              height: 27,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: svgAssets.map((assets) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: SizedBox(
                                       width: 35,
                                      height: 35,
                                    child: Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        color: AppColors.veryDarkBlue,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: SizedBox(
                                          child: SvgPicture.asset(
                                            assets['path'],
                                            width: 17,
                                            height: 17,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
