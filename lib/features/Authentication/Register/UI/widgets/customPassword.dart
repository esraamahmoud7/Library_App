import 'package:flutter/material.dart';

import '../../../../../core/colors/AppColors.dart';
import '../../../../../core/theme/appTheme.dart';

class CustomPassword extends StatelessWidget {
  const CustomPassword({super.key, required this.label, this.prefixIcon, this.suffixIcon, required this.hint, required this.obscureText, required this.warn, this.controller, this.secondCont});

  final String label,hint;
  final Widget? prefixIcon,suffixIcon;
  final bool obscureText;
  final String warn;
  final TextEditingController? controller,secondCont;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(label,
            style: AppStyles.textStyle20.copyWith(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        SizedBox(height: 10),
        TextFormField(
          controller: controller,
          validator: (value) =>
                    value == null || value.isEmpty ? warn : null,
          obscureText: obscureText,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hint,
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: AppColors.primaryColor,   // Border color
                width: 3.0,           // Border width
              ),
            ),
            errorBorder: UnderlineInputBorder(
               borderSide: BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    color: AppColors.primaryColor,   // Border color
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

