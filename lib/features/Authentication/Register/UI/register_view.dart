import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/features/Authentication/Register/UI/widgets/customElevatedButton.dart';
import 'package:library_app/features/Authentication/Register/UI/widgets/customPassword.dart';
import 'package:library_app/features/Authentication/Register/UI/widgets/custom_textField.dart';

import '../../../../core/Routes/pageRoutes.dart';
import '../../../../core/colors/AppColors.dart';
import '../../../../core/theme/appTheme.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool _obscureText = true;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool _isButtonEnabled = false;
  final _formKey = GlobalKey<FormState>();

  void _checkFieldsFilled() {
    setState(() {
      _isButtonEnabled = nameController.text.isNotEmpty &&
          emailController.text.isNotEmpty &&
          passwordController.text.isNotEmpty &&
          confirmPasswordController.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    super.initState();
    // Listen to all controllers
    nameController.addListener(_checkFieldsFilled);
    emailController.addListener(_checkFieldsFilled);
    passwordController.addListener(_checkFieldsFilled);
    confirmPasswordController.addListener(_checkFieldsFilled);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
          child: ListView(
            children: [
              Image.asset("assets/images/logo.png",width: 100,height: 150,),
              Center(
                child: Text("Create An Account",
                  style: AppStyles.textStyle24.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor
                  ),
                ),
              ),
              SizedBox(height: 48,),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextField(warn : "Name is required",label: "Name",hint: 'Enter your name',controller: nameController,),
                      CustomTextField(warn : "Email is required",label: "Email",prefixIcon: Icon(Icons.email_outlined,color: AppColors.primaryColor,size: 25,),hint: 'Enter your email',controller: emailController,),
                      CustomPassword(
                        controller: passwordController,
                        warn: " Password is required",
                        label: "Password",
                        hint: 'Enter your Password',
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
                        ), obscureText: _obscureText,
                      ),
                      CustomPassword(
                        controller: confirmPasswordController,
                        secondCont: passwordController,
                        warn: " Confirm Password is required",
                        label: "Confirm Password",
                        hint: 'Confirm your Password',
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
                        ), obscureText: _obscureText,

                      ),
                      SizedBox(height: 50,),
                      customElevatedButton(
                        foregroundColor: _isButtonEnabled && _formKey.currentState?.validate() == true? AppColors.black : AppColors.primaryColor,
                        backgroundColor: _isButtonEnabled && _formKey.currentState?.validate() == true? AppColors.primaryColor : AppColors.grey,
                        label: "Sign Up",
                        onPressed: _isButtonEnabled
                            ? () {
                          if (_formKey.currentState?.validate() == true) {
                            GoRouter.of(context).push(PagesRoute.OTP);
                          }
                        }
                            : null,
                      ),
                      SizedBox(height: 24,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Have an account already?  ",
                            style: AppStyles.textStyle18.copyWith(
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              GoRouter.of(context).push(PagesRoute.login);
                            },
                            child: Text("Log in",
                              style: AppStyles.textStyle18.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.primaryColor
                              ),
                            ),
                          )
                        ],
                      )

                    ],
                  )

              )
            ],
          ),
        ),
      ),
    );
  }
}
