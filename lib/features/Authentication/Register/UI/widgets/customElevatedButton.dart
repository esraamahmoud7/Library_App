import 'package:flutter/material.dart';

import '../../../../../core/colors/AppColors.dart';
import '../../../../../core/theme/appTheme.dart';


class customElevatedButton extends StatelessWidget {
  const customElevatedButton({
    super.key, this.onPressed, required this.label, required this.backgroundColor, required this.foregroundColor,
  });

  final void Function()? onPressed;
  final String label;
  final Color backgroundColor,foregroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 500,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // Rounded corners
            ),
          ),
          child: Text(label,
            style: AppStyles.textStyle20

          )

      ),
    );
  }
}

