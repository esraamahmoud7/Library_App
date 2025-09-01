import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/core/colors/AppColors.dart';
import 'package:library_app/features/welcome/UI/widgets/customAppBar.dart';

import '../../../../../core/theme/appTheme.dart';
import '../../../../../core/widgets/backarrowPage.dart';

class AvailableTimeView extends StatelessWidget {
  const AvailableTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          children: [
            backPage(onBack: (){GoRouter.of(context).pop();},title: "Available Time"),
            Spacer(flex: 1,),
            TimeBox(),
            Spacer(flex: 3,)
          ],
        ),
      ),
    );
  }
}

class TimeBox extends StatelessWidget {
  const TimeBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              spreadRadius: 1,
              offset: const Offset(0 , 20),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.access_time, // clock icon
                color: AppColors.primaryColor,
                size: 40,
              ),
              const SizedBox(height: 12),
              Text(
                "Autem nihil ut aliquam omnis ullam. Harum qui dolorem corporis tempore quia et ratione. Rerum qui at qui.",
                style: AppStyles.textStyle18.copyWith(
                  fontWeight: FontWeight.w400
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Eveniet temporibus et et alias reiciendis quidem illum. Non suscipit et repellendus at molestiae dolores accusamus. "
                    "Non ab qui dolore fugit ea adipisci deleniti. Non possimus consequatur voluptatum minima autem. "
                    "facere incidunt iusto cupiditate ea ea fugiat.",
                style: AppStyles.textStyle18.copyWith(
                    fontWeight: FontWeight.w400
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
