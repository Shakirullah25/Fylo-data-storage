// Root of the widget
import 'package:flutter/material.dart';
import 'package:fylo_data_storage_component/loading_screen.dart';
import 'package:fylo_data_storage_component/responsive_layout.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<void> _loadResources() async {
    // Simulating a delay for loading resources
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fylo Data Storage",
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Colors.black,
      ),
      home: FutureBuilder(
        future: _loadResources(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingScreen();
          } else {
            return const ResponsiveLayout();
          }
        },
      ),
    );
  }
}
