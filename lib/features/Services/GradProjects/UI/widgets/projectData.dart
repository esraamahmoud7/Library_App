import 'package:flutter/material.dart';

import '../../../../../core/theme/appTheme.dart';


class projectData extends StatelessWidget {
  const projectData({
    super.key, required this.text1, required this.text2, required this.text3, required this.width, required this.isBold,
  });

  final String text1,text2,text3;
  final double width;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1,
          style: AppStyles.textStyle20.copyWith(
              fontWeight: isBold ? FontWeight.bold : FontWeight.w400
          ),
        ),
        SizedBox(width: width,),
        Text(text2,
            style: AppStyles.textStyle20.copyWith(
                fontWeight: isBold ? FontWeight.bold : FontWeight.w400
            )
        ),
        SizedBox(width: width,),
        Text(text3,
            style: AppStyles.textStyle20.copyWith(
                fontWeight: isBold ? FontWeight.bold : FontWeight.w400
            )
        ),
      ],
    );
  }
}
