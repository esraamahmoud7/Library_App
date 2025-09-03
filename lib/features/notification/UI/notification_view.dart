import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/core/colors/AppColors.dart';
import 'package:library_app/core/theme/appTheme.dart';
import 'package:library_app/core/widgets/backarrowPage.dart';
import 'package:library_app/features/notification/UI/widgets/Time.dart';
import 'package:library_app/features/notification/UI/widgets/notificationBox.dart';
import 'package:library_app/features/welcome/UI/widgets/customAppBar.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: ListView(
          children: [
            backPage(title: "Notification",onBack: (){GoRouter.of(context).pop();},),
            SizedBox(height: 12,),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context,index)
                    {
                      return NotificationBox();
                    }
            )
          ],
        ),
      ),
    );
  }
}