import 'package:flutter/material.dart';
import 'package:library_app/core/colors/AppColors.dart';
import 'package:library_app/features/Services/GradProjects/UI/ProjectView.dart';

import '../../../../core/theme/appTheme.dart';
import 'widgets/materialCard.dart';

class GradProjects extends StatefulWidget {
  const GradProjects({super.key});

  @override
  State<GradProjects> createState() => _GradProjectsState();
}

class _GradProjectsState extends State<GradProjects> {
  bool showProjectDetails = false;

  @override
  Widget build(BuildContext context) {
    if (showProjectDetails) {
      // show BorrowBooks screen
      return ProjectDetails(
        onBack: () {
          setState(() {
            showProjectDetails = false; // go back to projects
          });
        },
      );
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Projects",
                style: AppStyles.textStyle24.copyWith(
                    fontWeight: FontWeight.w800
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                width: 90,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AppColors.primaryColor,
                    width: 1.5
                  )
                ),
                child: Row(
                  children: [
                    Icon(Icons.filter_alt_sharp,color: AppColors.primaryColor,),
                    SizedBox(width: 5,),
                    Text("Filter",
                      style: AppStyles.textStyle16.copyWith(
                        color: AppColors.primaryColor,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 24,),
          Expanded(
            child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20,
                  childAspectRatio: 3/4,
                  mainAxisExtent: 180,
                ),
                itemBuilder: (context,index)
                {
                  return ProjectCard(
                    onTap: (){
                      setState(() {
                        showProjectDetails = true; // go back to home
                      });
                    },
                  );
                }
            ),
          ),

        ],
      ),
    );
  }
}

