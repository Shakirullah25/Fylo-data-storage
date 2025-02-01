// Root of the widget
import 'package:flutter/material.dart';
import 'package:fylo_data_storage_component/fylo_data_storage_desktop_layout.dart';
import 'package:fylo_data_storage_component/fylo_data_storage_mobile_layout.dart';
import 'package:fylo_data_storage_component/responsive_layout.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fylo Data Storage",
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Colors.black,
      ),
      home:  ResponsiveLayout(),
    );
  }
}
