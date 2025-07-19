import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/Routes/pageRoutes.dart';
import '../../../../core/colors/AppColors.dart';
import '../../../../core/images/app_images.dart';
import '../../../../core/theme/appTheme.dart';
import '../../Register/UI/widgets/customElevatedButton.dart';
import '../../Register/UI/widgets/customPassword.dart';
import '../../Register/UI/widgets/custom_textField.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _obscureText = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isButtonEnabled = false;

  void _checkFieldsFilled() {
    setState(() {
      _isButtonEnabled = emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty;

    });
  }

  void initState() {
    super.initState();
    // Listen to all controllers
    emailController.addListener(_checkFieldsFilled);
    passwordController.addListener(_checkFieldsFilled);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical:30 ),
            child: ListView(
              children: [
                Image.asset(AppImages.logo,width: 100,height: 150,),
                Center(
                  child: Column(
                    children: [
                      Text("Welcome Back",
                        style:AppStyles.textStyle24.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor
                        )
                      ),
                      Text("Login to continue",
                        style:AppStyles.textStyle22.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.primaryColor
                        )
                      ),
                    ]
                  )
                ),
                SizedBox(height: 70,),
                Form(
                  key: _formKey,
                     child: Column(
                         children: [
                           CustomTextField(controller: emailController,warn : "Email is required",label: "Email Address", hint: "Enter you Email"),
                           SizedBox(height: 18,),
                           CustomPassword(
                             controller: passwordController,
                               warn: " Password is required",
                               label: "Password",
                               hint: "Enter you password",
                               suffixIcon: IconButton(
                                 onPressed: (){
                                   setState(() {
                                     _obscureText = !_obscureText;
                                   });
                                 },
                                 icon: Icon(
                                   _obscureText ? Icons.visibility_off : Icons.visibility,
                                   color: AppColors.primaryColor,
                                   size: 25,
                                 ),
                               ),
                               obscureText: _obscureText
                           ),
                           SizedBox(height: 12,),
                           Align(
                             alignment: Alignment.centerRight,
                             child: Text("Forget Password",
                               style:AppStyles.textStyle20.copyWith(
                                   color: AppColors.primaryColor,
                                   fontWeight: FontWeight.w500
                               )
                             ),
                           ),
                           SizedBox(height: 85,),
                           customElevatedButton(
                             foregroundColor: _isButtonEnabled ? AppColors.black : AppColors.primaryColor,
                             backgroundColor: _isButtonEnabled ? AppColors.primaryColor : AppColors.grey,
                             label: "Log In",
                             onPressed: (){},
                           ),
                           SizedBox(height: 40,),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Don’t have an account? ",
                                 style:AppStyles.textStyle18.copyWith(
                                     fontWeight: FontWeight.w500
                                 )
                               ),
                               GestureDetector(
                                 onTap: (){
                                   GoRouter.of(context).push(PagesRoute.init);
                                 },
                                 child: Text("Sign up now",
                                   style:AppStyles.textStyle18.copyWith(
                                       fontWeight: FontWeight.w500,
                                       color: AppColors.primaryColor
                                   )
                                 ),
                               )
                             ],
                           )
                         ],
                     )
                ),
              ],
                  ),
            ),
          )
    );
  }
}
