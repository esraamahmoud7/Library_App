import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/core/widgets/backarrowPage.dart';
import 'package:library_app/features/welcome/UI/widgets/custom%20Button.dart';

import '../../../core/Routes/pageRoutes.dart';
import '../../../core/colors/AppColors.dart';
import '../../../core/theme/appTheme.dart';
import '../../Services/borrowBooks/UI/borrowBookScreen.dart';

class HomeVew extends StatefulWidget {
  const HomeVew({super.key});

  @override
  State<HomeVew> createState() => _HomeVewState();
}

class _HomeVewState extends State<HomeVew> {
  Color borderColor = AppColors.grey;
  Color textColor = AppColors.grey;
  bool showBorrowBooks = false;


  @override
  Widget build(BuildContext context) {
    if (showBorrowBooks) {
      // show BorrowBooks screen
      return BorrowBooksView(
        onBack: () {
          setState(() {
            showBorrowBooks = false; // go back to home
          });
        },
      );
    }
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 25),
          child: Column(
            children: [
              backPage(title: "Explore Services",onBack: (){GoRouter.of(context).push(PagesRoute.welcome);},),
              // Align(
              //   alignment: Alignment.topLeft,
              //   child: Text("Explore Services",
              //     style: AppStyles.textStyle24.copyWith(
              //         fontWeight: FontWeight.w800
              //     ),
              //   ),
              // ),
              const SizedBox(height: 131,),
              CustomButton(
                title: "Borrowing Book",
                onPressed :()
                  {
                    borderColor = AppColors.primaryColor;
                    textColor = AppColors.primaryColor;
                    setState(() {
                      showBorrowBooks = true;
                    });
                    // showBorrowBooks = true; // switch to BorrowBooks
                    Future.delayed(Duration(milliseconds: 80), () {});
                  }, borderColor: borderColor, textColor: textColor,
              ),
              const SizedBox(height: 45),
              CustomButton(
                title: "Deep Search",
                onPressed: (){},
                  borderColor: borderColor, textColor: textColor
              ),
            ],
          ),
        )

      ],
    );
  }
}
