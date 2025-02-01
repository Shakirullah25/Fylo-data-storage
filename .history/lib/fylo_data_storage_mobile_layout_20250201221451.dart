import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:fylo_data_storage_component/colors.dart';
import 'package:fylo_data_storage_component/custom_progress_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';

class FyloDataStorageMobileLayout extends StatelessWidget {
  FyloDataStorageMobileLayout({super.key});

  final List<Map<String, dynamic>> svgAssets = [
    {"path": "lib/assets/icon-document.svg"},
    {"path": "lib/assets/icon-folder.svg"},
    {"path": "lib/assets/icon-upload.svg"},
  ];

  final double progressValue = 0.815; // Defining the progress value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.veryDarkBlue,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final double screenHeight = constraints.maxHeight;
          final double screenWidth = constraints.maxWidth;
          return Stack(
            children: [
              Positioned(
                bottom: 0,
                child: SizedBox(
                  height: screenHeight,
                  width: screenWidth,
                  child: Image.asset(
                    "lib/assets/bg-mobile.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        child: Container(
                          width: screenWidth * 0.80,
                          height: screenHeight * 0.30,
                          decoration: const BoxDecoration(
                            color: AppColors.darkBlue,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 45),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "lib/assets/logo.svg",
                                  color: Colors.white,
                                  width: 25,
                                  height: 25,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(height: 25),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: svgAssets.map((assets) {
                                    return Container(
                                      width: 45,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: AppColors.paleBlue,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Center(
                                        child: SvgPicture.asset(
                                          assets['path'],
                                          width: 25,
                                          height: 25,
                                          fit: BoxFit.contain,
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
                      const SizedBox(
                          height: 20), // Space between the two containers
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        child: Container(
                          width: screenWidth * 0.8,
                          height: screenHeight * 0.20,
                          decoration: const BoxDecoration(
                            color: AppColors.darkBlue,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // content for the second container
                                Text.rich(
                                  TextSpan(
                                    style: GoogleFonts.raleway(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                    children: const [
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
                                  decoration: BoxDecoration(
                                    color: AppColors.grayishBlue,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  message: "185 GB remaining",
                                  child: CustomGradientProgressIndicator(
                                    progressValue: progressValue,
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
                      Bubble(
                        stick: true,
                        nip: BubbleNip.rightBottom,
                        showNip: false,
                        color: Colors.white,
                        child: Text.rich(
                          TextSpan(
                            style: GoogleFonts.raleway(
                              fontSize: 12,
                            ),
                            children: [
                              TextSpan(
                                text: "185 ",
                                style: GoogleFonts.raleway(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "GB LEFT",
                                style: GoogleFonts.raleway(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
