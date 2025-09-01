import 'package:flutter/material.dart';

import '../../../../../../core/colors/AppColors.dart';


class TimeBox extends StatelessWidget {
  const TimeBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            spreadRadius: 1,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.access_time, // clock icon
              color: AppColors.primaryColor,
              size: 40,
            ),
            const SizedBox(height: 12),
            const Text(
              "Autem nihil ut aliquam omnis ullam. Harum qui dolorem corporis tempore quia et ratione. Rerum qui at qui.",
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 8),
            const Text(
              "Eveniet temporibus et et alias reiciendis quidem illum. Non suscipit et repellendus at molestiae dolores accusamus. "
                  "Non ab qui dolore fugit ea adipisci deleniti. Non possimus consequatur voluptatum minima autem. "
                  "facere incidunt iusto cupiditate ea ea fugiat.",
              style: TextStyle(fontSize: 14),
            ),

          ],
        ),
      ),
    );
  }
}
