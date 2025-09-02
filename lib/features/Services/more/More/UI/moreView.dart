import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/core/Routes/pageRoutes.dart';
import 'package:library_app/features/Services/more/More/UI/widgets/MenuItem.dart';

import '../../../../../core/widgets/backarrowPage.dart';
import '../../../../welcome/UI/widgets/customAppBar.dart';

class MoreView extends StatelessWidget {
  const MoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: ListView(
          children: [
            backPage(onBack: (){GoRouter.of(context).go(PagesRoute.home);},title: "More"),
            SizedBox(height: 30,),
            BuildMenuItem(
              icon: Icons.help_outline,
              title: "FAQ",
              onTap: () {
                GoRouter.of(context).push(PagesRoute.faqs);
              },
            ),
            SizedBox(height: 32,),
            BuildMenuItem(
              icon: Icons.person_outline,
              title: "Account",
              onTap: () {
                GoRouter.of(context).push(PagesRoute.account);
              },
            ),
            SizedBox(height: 32,),
            BuildMenuItem(
              icon: Icons.logout,
              title: "Logout",
              onTap: () {
                GoRouter.of(context).go(PagesRoute.welcome);
              },
            ),
            SizedBox(height: 32,),
            BuildMenuItem(
              icon: Icons.access_time,
              title: "Available time",
              onTap: () {
                GoRouter.of(context).push(PagesRoute.time);
              },
            ),
          ],
        ),
      ),
    );
  }
}