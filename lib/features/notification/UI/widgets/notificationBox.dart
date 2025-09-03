import 'package:flutter/material.dart';

import '../../../../core/colors/AppColors.dart';
import '../../../../core/theme/appTheme.dart';
import 'Time.dart';


class NotificationBox extends StatelessWidget {
  const NotificationBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal:15 ,vertical: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
                color: AppColors.primaryColor,
                width: 1.5
            )
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage("assets/images/notification.jpg"),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("This is your time for yoga",
                      style: AppStyles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold
                      ),
                      softWrap: true,
                      overflow: TextOverflow.clip
                  ),
                  SizedBox(height: 5,),
                  Text("This is your time for yoga at monster gym, let’s prepare your self and don’t be late",
                      style: AppStyles.textStyle18.copyWith(
                          fontWeight: FontWeight.w400
                      ),
                      softWrap: true,
                      overflow: TextOverflow.clip
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TimeWidget(time: "15:00 PM")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
