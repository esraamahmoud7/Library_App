import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/core/Routes/pageRoutes.dart';

import '../../../../core/colors/AppColors.dart';
import '../../../../core/theme/appTheme.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.title, required this.onPressed, required this.borderColor, required this.textColor,
  });

  final String title;
  final void Function() onPressed;
  final Color borderColor, textColor;

  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      width: 350,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.white,
            foregroundColor: textColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: borderColor, // Border color
                  width: 2.0,
                )
            ),
          ),
          child: Text(title,
            style: AppStyles.textStyle18.copyWith(
                fontWeight: FontWeight.w700
            ),
          )
      ),
    );
  }
}

