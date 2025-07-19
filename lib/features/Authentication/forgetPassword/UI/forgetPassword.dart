import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/core/colors/AppColors.dart';
import 'package:library_app/core/theme/appTheme.dart';
import 'package:library_app/features/Authentication/Register/UI/widgets/customElevatedButton.dart';

import '../../../../core/Routes/pageRoutes.dart';
import '../../Register/UI/widgets/custom_textField.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  final emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _isButtonEnabled = false;

  void _checkFieldsFilled() {
    setState(() {
      _isButtonEnabled =
          emailController.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    super.initState();
    // Listen to all controllers
    emailController.addListener(_checkFieldsFilled);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 100),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 35,),
                Text("Forgot your Password?",
                    style: AppStyles.textStyle24.copyWith(
                      fontWeight: FontWeight.bold
                    ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 337,
                  child: Text("Enter your email address and we will share a link to create a new password.",
                    style: AppStyles.textStyle22.copyWith(
                        // fontWeight: FontWeight.normal
                    ),
                  ),
                ),
                SizedBox(height: 35,),
                CustomTextField(label: 'Email', hint: 'Enter Email Address', warn: 'Email is required',controller: emailController,),
                SizedBox(height: 50,),
                customElevatedButton(
                  label: 'Send',
                  foregroundColor: _isButtonEnabled ? AppColors.black : AppColors.primaryColor,
                  backgroundColor: _isButtonEnabled ? AppColors.primaryColor : AppColors.grey,
                  onPressed: _isButtonEnabled
                      ? () {
                    if (_formKey.currentState?.validate() == true) {
                      GoRouter.of(context).push(PagesRoute.changePass);
                    }
                  }
                      : null,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
