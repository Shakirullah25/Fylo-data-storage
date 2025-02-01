import 'package:flutter/material.dart';
import 'package:fylo_data_storage_component/fylo_data_storage_desktop_layout.dart';
import 'package:fylo_data_storage_component/fylo_data_storage_mobile_layout.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 1000) {
          return FyloDataStorageMobileLayout();
        } else {
          return FyloDataStorageDesktopLayout();
        }
      },
    );
  }
}
