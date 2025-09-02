import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/core/Routes/pageRoutes.dart';
import 'package:library_app/core/theme/appTheme.dart';
import 'package:library_app/core/widgets/backarrowPage.dart';
import 'package:library_app/features/welcome/UI/widgets/customAppBar.dart';

import '../../More/UI/widgets/MenuItem.dart';

class MyAccountView extends StatelessWidget {
  const MyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        child: Column(
          children: [
            backPage(title: "Account",onBack: (){GoRouter.of(context).go(PagesRoute.more);},),
            SizedBox(height: 54 ,),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile.jpg"),
              radius: 90,
            ),
            SizedBox(height: 20,),
            Text("Esraa Mahmoud",
              style: AppStyles.textStyle24,
            ),
            SizedBox(height: 67,),
            BuildMenuItem(
                title: 'Personal Data',
                icon: Icons.account_box_outlined,
                onTap: (){
                  GoRouter.of(context).push(PagesRoute.accountDetails);
                },
            ),
            SizedBox(height: 32,),
            BuildMenuItem(
                title: 'Help',
                icon: Icons.help_outline_outlined,
                onTap: (){

                },
            ),

          ],
        ),
      ),
    );
  }
}
