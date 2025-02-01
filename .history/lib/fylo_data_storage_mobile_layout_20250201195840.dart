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
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                child: Container(
                  width: screenWidth * 0.8,
                  height: screenHeight * 0.2,
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
                          width: 20,
                          height: 20,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: svgAssets.map((assets) {
                            return Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: AppColors.paleBlue,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: SvgPicture.asset(
                                  assets['path'],
                                  width: 20,
                                  height: 20,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: 20),
                        ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child: Container(
                      width: screenWidth * 0.40,
                      height: screenHeight * 0.20,
                      decoration: const BoxDecoration(
                        color: AppColors.darkBlue,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // content for the second container 
                            Text.rich(
                              TextSpan(
                                style: GoogleFonts.raleway(
                                  fontSize: 13,
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
