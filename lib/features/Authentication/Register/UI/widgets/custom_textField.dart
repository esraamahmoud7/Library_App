import 'package:flutter/material.dart';

import '../../../../../core/colors/AppColors.dart';
import '../../../../../core/functions/regex.dart';
import '../../../../../core/theme/appTheme.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.label, this.prefixIcon, required this.hint, required this.warn, this.controller});

  final String label,hint,warn;
  final Widget? prefixIcon;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(label,
            style: AppStyles.textStyle22.copyWith(
              // color: AppColors.primaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: 10),
        TextFormField(
          validator: (value)
          {
            if(label == "Email" || label == "Email Address")
              {
                if (value == null || value.isEmpty) {
                  return "Email is required";
                } else if (!isValidEmail(value)) {
                  return "Invalid email format";
                }
                return null; // valid
              }
          },
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            hintText: hint,
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: AppColors.grey,
                width: 2.0,
              ),
            ),
            errorBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.red,width: 2),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.red, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                color: AppColors.primaryColor,
                width: 3.0,
              )
            )
          ),
        ),
        SizedBox(height: 16,)
      ],
    );
  }
}

