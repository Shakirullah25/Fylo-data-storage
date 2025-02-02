import 'package:flutter/material.dart';
import 'package:fylo_data_storage_component/colors.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkBlue),
        ),
      ),
    );
  }
}
