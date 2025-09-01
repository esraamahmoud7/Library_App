import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/core/AppData/Info.dart';
import 'package:library_app/features/Services/GradProjects/UI/widgets/materialCard.dart';
import 'package:library_app/features/Services/GradProjects/UI/widgets/projectData.dart';

import '../../../../core/theme/appTheme.dart';
import '../../../../core/widgets/backarrowPage.dart';

class ProjectDetails extends StatelessWidget {
  const ProjectDetails({super.key, required this.onBack});
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Column(
        children: [
          backPage(onBack: onBack,title: "Projects"),
          SizedBox(height: 32,),
          SizedBox(
              width: 230,
              height: 280,
              child: ProjectCard(onTap: (){})
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Column(
              children: [
                projectData(
                  isBold: false,
                  width: 50,
                  text1: "GPA",
                  text2: "Students",
                  text3: "Review",
                ),
                SizedBox(height: 5,),
                projectData(
                  isBold: true,
                  width: 90,
                  text1: "4",
                  text2: "10",
                  text3: "200",
                ),
              ],
            ),
          ),
          Text(AppInfo.projectData,
            textAlign: TextAlign.center,
            style: AppStyles.textStyle16.copyWith(
              fontWeight:FontWeight.w400 ,
              height: 1.4
            ),
          )
        ],
      ),
    );
  }
}
