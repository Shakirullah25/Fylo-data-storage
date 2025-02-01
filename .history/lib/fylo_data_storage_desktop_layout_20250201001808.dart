import 'package:flutter/material.dart';
import 'package:fylo_data_storage_component/colors.dart';

class FyloDataStorageDesktopLayout extends StatelessWidget {
  const FyloDataStorageDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.veryDarkBlue,
      body: stac,
      // body: Align(
      //   alignment: Alignment.bottomCenter,
      //   child: Container(
      //     decoration: BoxDecoration(
      //       image: DecorationImage(
      //         image: AssetImage(
      //           "lib/assets/bg-desktop.png",
      //         ),
      //         // fit: BoxFit.cover,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
