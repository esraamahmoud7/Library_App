import 'package:flutter/material.dart';
import 'package:library_app/features/Services/About%20Us/data/models/resources.dart';

import '../../../../../core/colors/AppColors.dart';
import '../../../../../core/theme/appTheme.dart';


class ResourcesBox extends StatelessWidget {
  const ResourcesBox({
    super.key, required this.resource,
  });

  final ResourceModel resource;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 142,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.primaryColor,   // border color
          width: 1.5,           // border thickness
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 10),
        child: Column(
          children: [
            Image.asset(resource.image),
            SizedBox(height: 10,),
            Text(resource.title),
            SizedBox(height: 10,),
            Text(resource.count,
              style: AppStyles.textStyle20.copyWith(fontWeight: FontWeight.bold),),


          ],
        ),
      ),
    );
  }
}
