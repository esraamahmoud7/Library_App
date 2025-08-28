import 'package:flutter/material.dart';

import '../AppData/Info.dart';
import '../colors/AppColors.dart';
import '../theme/appTheme.dart';


class ServiceInfo extends StatelessWidget {
  const ServiceInfo({
    super.key, required this.info,
  });

  final String info;



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
            width: 1.5,           // border thickness
          ),
        ),
        child: SingleChildScrollView(
          child: Text(info,
            style: AppStyles.textStyle16,
          ),
        ),
      ),
    );
  }
}
