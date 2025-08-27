import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/core/colors/AppColors.dart';
import 'package:library_app/core/images/app_images.dart';
import 'package:library_app/core/theme/appTheme.dart';

import '../../../core/Routes/pageRoutes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  bool _showText = false;

  @override
  void initState() {
    // TODO: implement initState
    // Wait a bit, then show the text
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _showText = true;
      });
    });

    Future.delayed(Duration(seconds: 2), () {
      GoRouter.of(context).push(PagesRoute.welcome);

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primaryColor,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImages.logo),
            SizedBox(height: 20,),
            AnimatedCrossFade(
                firstChild: SizedBox(),
                secondChild: Text("FLMS",
                  style: AppStyles.textStyle40
                ),
                crossFadeState: _showText ? CrossFadeState.showSecond : CrossFadeState.showFirst,
                duration: Duration(milliseconds: 800))
          ],
        ),
      )
    );
  }
}
