import 'package:flutter/material.dart';

import '../../../../../core/colors/AppColors.dart';
import '../../../../../core/theme/appTheme.dart';

class CustomSnakeBar extends StatelessWidget {
  const CustomSnakeBar({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return SnackBar(
        content: Text(message,
        style: AppStyles.textStyle20.copyWith(
              fontWeight: FontWeight.w700
          ),
        ),
        backgroundColor: AppColors.primaryColor,
        duration: Duration(seconds: 2),
     );
  }
}
