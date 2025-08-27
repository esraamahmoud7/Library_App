import 'package:flutter/material.dart';

import '../../../../../core/AppData/Info.dart';
import '../../../../../core/colors/AppColors.dart';
import '../../../../../core/theme/appTheme.dart';


class bookBorrowInfo extends StatelessWidget {
  const bookBorrowInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 11,vertical: 15),
        width: MediaQuery.of(context).size.width,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color: AppColors.primaryColor,   // border color
            width: 1,           // border thickness
          ),
        ),
        child: SingleChildScrollView(
          child: Text(AppInfo.bookServiceInfo,
            style: AppStyles.textStyle16,
          ),
        ),
      ),
    );
  }
}
