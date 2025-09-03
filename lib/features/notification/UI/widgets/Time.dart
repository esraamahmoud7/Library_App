import 'package:flutter/material.dart';
import 'package:library_app/core/colors/AppColors.dart';

import '../../../../../core/theme/appTheme.dart';



class TimeWidget extends StatelessWidget {
  const TimeWidget({
    super.key, required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.access_time,color: AppColors.darkGrey),
        SizedBox(width: 10),
        Text(
          time,
          style: AppStyles.textStyle20.copyWith(
            fontWeight: FontWeight.w400,
            color: AppColors.darkGrey
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}