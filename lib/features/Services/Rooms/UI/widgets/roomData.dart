import 'package:flutter/material.dart';

import '../../../../../core/theme/appTheme.dart';

class RoomData extends StatelessWidget {
  const RoomData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 6),
      decoration: const BoxDecoration(
        color: Color(0xFFF7F7F7), // light grey background
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Room number: 20",
              style: AppStyles.textStyle20.copyWith(
                  fontWeight: FontWeight.bold
              ),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                Icon(Icons.access_time,),
                SizedBox(width: 10),
                Text(
                  "10 Am : 3 PM",
                  style: AppStyles.textStyle18,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}