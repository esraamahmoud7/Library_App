import 'package:flutter/material.dart';

import '../../../../../core/theme/appTheme.dart';



class TimeCustomWidget extends StatelessWidget {
  const TimeCustomWidget({
    super.key, required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.access_time,),
        SizedBox(width: 10),
        Text(
          time,
          style: AppStyles.textStyle18,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}