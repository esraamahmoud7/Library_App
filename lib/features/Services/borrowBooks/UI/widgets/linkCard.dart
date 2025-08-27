import 'package:flutter/material.dart';
import 'package:library_app/core/theme/appTheme.dart';

import '../../../../../core/colors/AppColors.dart';


class LinkCard extends StatelessWidget {
  const LinkCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: AppColors.lightGray,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              spreadRadius: 2,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Center(
            child: GestureDetector(
                child: Text("https://cu.edu.eg/Home",
                    style: AppStyles.textStyle18.copyWith(
                      color: AppColors.primaryColor
                    ),
                )
            )
        ),
      ),
    );
  }
}
