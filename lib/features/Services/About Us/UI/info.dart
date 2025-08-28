import 'package:flutter/material.dart';
import 'package:library_app/core/AppData/Info.dart';
import 'package:library_app/features/Services/About%20Us/UI/widgets/ResourcesGridView.dart';
import 'package:library_app/features/Services/About%20Us/data/models/resources.dart';

import '../../../../core/colors/AppColors.dart';
import '../../../../core/theme/appTheme.dart';
import '../../../../core/widgets/ServiceInfo.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: ListView(
        children: [
          Text("About US",
            style: AppStyles.textStyle24.copyWith(
                fontWeight: FontWeight.w800
            ),
          ),
          SizedBox(height: 24,),
          ServiceInfo(info: AppInfo.aboutUs,),
          SizedBox(height: 45,),
          ResourcesGridView(
            resources: [
              ResourceModel(
                  image: "assets/images/aboutUsIcon.png",
                  title: "PDF Downloaded",
                  count: "1234"
              ),
              ResourceModel(
                  image: "assets/images/aboutUsIcon.png",
                  title: "PDF Downloaded",
                  count: "1234"
              ),
              ResourceModel(
                  image: "assets/images/aboutUsIcon.png",
                  title: "PDF Downloaded",
                  count: "1234"
              ),
              ResourceModel(
                  image: "assets/images/aboutUsIcon.png",
                  title: "PDF Downloaded",
                  count: "1234"
              ),
              ResourceModel(
                  image: "assets/images/aboutUsIcon.png",
                  title: "PDF Downloaded",
                  count: "1234"
              )
            ],
          ),

        ],
      ),
    );
  }
}