import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:fylo_data_storage_component/colors.dart';
import 'package:fylo_data_storage_component/custom_progress_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';

class FyloDataStorageDesktopLayout extends StatelessWidget {
  FyloDataStorageDesktopLayout({super.key});

  final List<Map<String, dynamic>> svgAssets = [
    {"path": "lib/assets/icon-document.svg"},
    {"path": "lib/assets/icon-folder.svg"},
    {"path": "lib/assets/icon-upload.svg"},
  ];

  final double progressValue = 0.815; // Define the progress value

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
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Add content for the second container here
                            Text.rich(
                              TextSpan(
                                style: GoogleFonts.raleway(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                                children: [
                                  TextSpan(text: "You've used "),
                                  TextSpan(
                                    text: "815 ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "of your storage",
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            Tooltip(
                              message: "185 GB remaining",
                              child: CustomGradientProgressIndicator(
                                progressValue: progressValue,
                              ),
                            ),
                            Bubble(
                              nip: BubbleNip.leftBottom,
                              color: Colors.white,
                              child: Text.rich(
                                TextSpan(
                                  style: GoogleFonts.raleway(
                                    fontSize: 12,
                                    color: Colors.black,

                                  ),
                                  children: [
                                    TextSpan(
                                      text: "185 "
                                      style: 
                                    )
                                  ]
                                )
                              ),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "0 GB",
                                  style: GoogleFonts.raleway(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  "1000 GB",
                                  style: GoogleFonts.raleway(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
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
