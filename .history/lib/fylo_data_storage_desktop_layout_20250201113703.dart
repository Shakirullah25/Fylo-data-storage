import 'package:flutter/material.dart';
import 'package:fylo_data_storage_component/colors.dart';
import 'package:google_fonts/google_fonts.dart';
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(100)),
                    child: Container(
                      width: screenWidth * 0.25,
                      height: screenHeight * 0.30,
                      decoration: BoxDecoration(
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
                              color: Colors.white,
                              width: 30,
                              height: 30,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: svgAssets.map((assets) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: AppColors.paleBlue,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        assets['path'],
                                        width: 20,
                                        height: 20,
                                        fit: BoxFit.contain, 
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
                  const SizedBox(width: 20), // Space between the two containers
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    child: Container(
                      width: screenWidth * 0.40,
                      height: screenHeight * 0.20,
                      decoration: BoxDecoration(
                        color: AppColors.darkBlue,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Add content for the second container here
                            Text.rich(
                              TextSpan(
                                style: GoogleFonts.raleway(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                                children: [
                                TextSpan(
                                  text: "You've used "
                                  
                                )
                                
                                ]
                              )
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
