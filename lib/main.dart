// Root of the widget
import 'package:flutter/material.dart';
import 'package:fylo_data_storage_component/colors.dart';
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
      home:  FutureBuilder(
        future: _loadResources(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return const ResponsiveLayout();
          } else {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkBlue),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
