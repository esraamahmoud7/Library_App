import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/core/theme/appTheme.dart';
import 'package:library_app/features/Authentication/Register/UI/widgets/customElevatedButton.dart';
import 'package:library_app/features/Authentication/forgetPassword/UI/widgets/customSnakeBar.dart';

import '../../../../core/Routes/pageRoutes.dart';
import '../../../../core/colors/AppColors.dart';
import '../../Register/UI/widgets/customPassword.dart';

class ChangePassView extends StatefulWidget {
  const ChangePassView({super.key});

  @override
  State<ChangePassView> createState() => _ChangePassViewState();
}

class _ChangePassViewState extends State<ChangePassView> {
  bool _obscureText1 = true;
  bool _obscureText2 = true;

  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool _isButtonEnabled = false;
  final _formKey = GlobalKey<FormState>();

  void _checkFieldsFilled() {
    setState(() {
      _isButtonEnabled =
          passwordController.text.isNotEmpty &&
          confirmPasswordController.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    super.initState();
    // Listen to all controllers
    passwordController.addListener(_checkFieldsFilled);
    confirmPasswordController.addListener(_checkFieldsFilled);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset password",
            style: AppStyles.textStyle24.copyWith(
              fontWeight: FontWeight.w700
            ),
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 40),
          child: Column(
            children: [
              CustomPassword(
                controller: passwordController,
                warn: " Password is required",
                label: "New Password",
                hint: 'Enter your Password',
                suffixIcon: IconButton(
                  onPressed: (){
                    setState(() {
                      _obscureText1 = !_obscureText1;
                    });
                  },
                  icon: Icon(
                    _obscureText1 ? Icons.visibility_off : Icons.visibility,
                    color: AppColors.primaryColor,
                    size: 25,
                  ),
                ), obscureText: _obscureText1,
              ),
              SizedBox(height: 20,),
              CustomPassword(
                controller: confirmPasswordController,
                secondCont: passwordController,
                warn: " Confirm Password is required",
                label: "Confirm Password",
                hint: 'Confirm your Password',
                suffixIcon: IconButton(
                  onPressed: (){
                    setState(() {
                      _obscureText2 = !_obscureText2;
                    });
                  },
                  icon: Icon(
                    _obscureText2 ? Icons.visibility_off : Icons.visibility,
                    color: AppColors.primaryColor,
                    size: 25,
                  ),
                ), obscureText: _obscureText2,
              ),
              SizedBox(height: 100,),
              customElevatedButton(
                label: "Submit",
                foregroundColor: _isButtonEnabled && _formKey.currentState?.validate() == true? AppColors.black : AppColors.primaryColor,
                backgroundColor: _isButtonEnabled && _formKey.currentState?.validate() == true? AppColors.primaryColor : AppColors.grey,
                onPressed: _isButtonEnabled
                    ? () {
                  if (_formKey.currentState?.validate() == true) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      CustomSnakeBar(message : 'Password updated successfully!') as SnackBar
                    );

                    // Optional navigation
                    Future.delayed(Duration(seconds: 2), () {
                      GoRouter.of(context).push(PagesRoute.login);
                    });
                  }
                }
                : null,
              )
            ],
          ),
        ),
      ),
    );
  }
}
