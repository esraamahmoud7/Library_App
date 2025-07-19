import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/core/theme/appTheme.dart';
import 'package:library_app/features/Authentication/Register/UI/widgets/customElevatedButton.dart';

import '../../../../core/Routes/pageRoutes.dart';
import '../../../../core/colors/AppColors.dart';
import '../../Register/UI/widgets/customPassword.dart';

class ChangePassView extends StatefulWidget {
  const ChangePassView({super.key});

  @override
  State<ChangePassView> createState() => _ChangePassViewState();
}

class _ChangePassViewState extends State<ChangePassView> {
  bool _obscureText = true;
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
              SizedBox(height: 20,),
              CustomPassword(
                controller: confirmPasswordController,
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
              SizedBox(height: 100,),
              customElevatedButton(
                label: "Submit",
                foregroundColor: _isButtonEnabled ? AppColors.black : AppColors.primaryColor,
                backgroundColor: _isButtonEnabled ? AppColors.primaryColor : AppColors.grey,
                onPressed: _isButtonEnabled
                    ? () {
                  if (_formKey.currentState?.validate() == true) {
                    GoRouter.of(context).push(PagesRoute.OTP);
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
