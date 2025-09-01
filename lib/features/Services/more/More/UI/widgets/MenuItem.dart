import 'package:flutter/material.dart';

import '../../../../../../core/colors/AppColors.dart';
import '../../../../../../core/theme/appTheme.dart';


class BuildMenuItem extends StatelessWidget {
  const BuildMenuItem({
    super.key, required this.title, required this.icon, this.onTap,
  });

  final String title;
  final IconData icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: AppColors.primaryColor,),
      title: Text(
        title,
        style: AppStyles.textStyle20.copyWith(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.bold

        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: AppColors.primaryColor),
      onTap: onTap,
    );
  }
}
