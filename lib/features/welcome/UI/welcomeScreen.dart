import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/core/Routes/Routes.dart';
import 'package:library_app/core/colors/AppColors.dart';
import 'package:library_app/core/images/app_images.dart';

import '../../../core/Routes/pageRoutes.dart';
import '../../Authentication/Register/UI/widgets/customElevatedButton.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: Stack(
              children: [
                Image.asset(
                  AppImages.welcomeFrame,
                  width: double.infinity,      // take full container width
                  height: double.infinity,     // take full container height
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          SizedBox(height: 150,),
          customElevatedButton(
            width: 350,
            label: 'Explore Services',
            backgroundColor: AppColors.primaryColor,
            foregroundColor: AppColors.white,
            onPressed: (){
              GoRouter.of(context).push(PagesRoute.home);
            },
          ),
          SizedBox(height: 30,),
          customElevatedButton(
            width: 350,
            label: 'Register Now',
            backgroundColor: AppColors.white,
            foregroundColor: AppColors.primaryColor,
            onPressed: (){
              GoRouter.of(context).push(PagesRoute.register);
            },
          )

        ],
      ),
    );
  }
}
