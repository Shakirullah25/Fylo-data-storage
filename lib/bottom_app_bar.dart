import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fylo_data_storage_component/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

Widget bottomAppBar() {
  Future<void> launchURL() async {
    const url = "https://www.frontendmentor.io/challenges";
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw "Could not launch $url";
    }
  }

  Future<void> launchMyURL() async {
    const url = "https://x.com/Shakirullah25";
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launchUrl(
        mode: kIsWeb
            ? LaunchMode.platformDefault
            : LaunchMode.externalApplication,
        webOnlyWindowName: "_blank", // opens in a new tab,
        Uri.parse(
          url,
        ),
      );
    } else {
      throw "Could not launch $url";
    }
  }

  return LayoutBuilder(
    builder: (_, constraints) {
      double availableWidth = constraints.maxWidth;
      double fontSize;
      double bottomAppBarSize;

      // For svg images
      if (availableWidth <= 500) {
        fontSize = availableWidth * 0.030;
      } else if (availableWidth > 500 && availableWidth <= 1000) {
        fontSize = availableWidth * 0.027;
      } else {
        fontSize = availableWidth * 0.020;
      }
      // if (availableWidth <= 1000) {
      //   // mobile mode
      //   fontSize = availableWidth * 0.03;
      // } else if (availableWidth <= 500) {
      //   // small mobile mode
      //   fontSize = availableWidth * 0.010;
      // } else {
      //   // large desktop mode
      //   fontSize = availableWidth * 0.010;
      // }

      // for bottom app bar
      if (availableWidth <= 500) {
        bottomAppBarSize = availableWidth * 0.1;
      } else if (availableWidth > 500 && availableWidth <= 1000) {
        bottomAppBarSize = availableWidth * 0.08;
      } else if (availableWidth > 1000) {
        bottomAppBarSize = availableWidth * 0.04;
      } else {
        bottomAppBarSize = availableWidth * 0.01;
      }

      return BottomAppBar(
        height: bottomAppBarSize,
        color: AppColors.veryDarkBlue,
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      style: GoogleFonts.raleway(
                        color: AppColors.paleBlue,
                        fontSize: fontSize,
                      ),
                      children: [
                        const TextSpan(text: "Challenge by "),
                        TextSpan(
                          text: " Frontend Mentor",
                          style: GoogleFonts.raleway(
                            color: const Color.fromARGB(255, 20, 108, 197),
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = launchURL,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: 7,
                height: 7,
                decoration: const BoxDecoration(
                  color: AppColors.darkBlue,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.raleway(
                    color: AppColors.paleBlue,
                    fontSize: fontSize,
                  ),
                  children: [
                    const TextSpan(text: "Coded by "),
                    TextSpan(
                      text: "Shakirullah25",
                      style: const TextStyle(
                        color: Color.fromARGB(255, 20, 108, 197),
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = launchMyURL,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
