import 'package:flutter/material.dart';

import '../../../../../core/colors/AppColors.dart';
import '../../../../../core/theme/appTheme.dart';


class customElevatedButton extends StatelessWidget {
  const customElevatedButton({
    super.key, this.onPressed, required this.label, required this.backgroundColor, required this.foregroundColor, required this.width,
  });

  final void Function()? onPressed;
  final String label;
  final Color backgroundColor,foregroundColor;
  final double width;

  bool checkColor()
  {
    if (foregroundColor == AppColors.primaryColor || backgroundColor == AppColors.primaryColor)
      {
        return true;
      }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: width,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(
                    color: checkColor() ? AppColors.primaryColor : AppColors.grey,   // Border color
                    width: 2.0,
              )
            ),
          ),
          child: Text(label,
            style: AppStyles.textStyle22.copyWith(
              fontWeight: FontWeight.bold,
            )

          )

      ),
    );
  }
}

