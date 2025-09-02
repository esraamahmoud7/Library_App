import 'package:flutter/material.dart';

import '../../../../../core/colors/AppColors.dart';
import '../../../../../core/theme/appTheme.dart';

class CustomPassword extends StatelessWidget {
  const CustomPassword({super.key, required this.label, this.prefixIcon, this.suffixIcon, required this.hint, required this.obscureText, required this.warn, this.controller, this.secondCont, this.validator});

  final String label,hint;
  final Widget? prefixIcon,suffixIcon;
  final bool obscureText;
  final String warn;
  final TextEditingController? controller,secondCont;
  final String? Function(String?)? validator;

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
                fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 10),
        TextFormField(
          controller: controller,
          validator: validator,
          obscureText: obscureText,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hint,
              hintStyle: AppStyles.textStyle18.copyWith(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w400
              ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: AppColors.grey,   // Border color
                width: 2.0,           // Border width
              ),
            ),
            errorBorder: UnderlineInputBorder(
               borderSide: BorderSide(color: Colors.red),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: AppColors.primaryColor,   // Border color
                    width: 2.0,
                  )
            )
          ),
        ),
        SizedBox(height: 16,)
      ],
    );
  }
}

