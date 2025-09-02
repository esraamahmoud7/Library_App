import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/core/widgets/backarrowPage.dart';
import 'package:library_app/features/Authentication/Register/UI/widgets/customElevatedButton.dart';
import 'package:library_app/features/welcome/UI/widgets/customAppBar.dart';
import '../../../../../core/Routes/pageRoutes.dart';
import '../../../../../core/colors/AppColors.dart';
import '../../../../../core/functions/regex.dart';
import '../../../../Authentication/Register/UI/widgets/customPassword.dart';
import '../../../../Authentication/Register/UI/widgets/custom_textField.dart';

class AccountDetailsView extends StatefulWidget {
  const AccountDetailsView({super.key});

  @override
  State<AccountDetailsView> createState() => _AccountDetailsViewState();
}

class _AccountDetailsViewState extends State<AccountDetailsView> {
  bool _obscureText = true;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool _isButtonEnabled = false;
  final _formKey = GlobalKey<FormState>();

  void _checkFieldsFilled() {
    setState(() {
      _isButtonEnabled = nameController.text.isNotEmpty ||
          emailController.text.isNotEmpty ||
          passwordController.text.isNotEmpty ||
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
      appBar: customAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          children: [
            backPage(title: "Personal Data",onBack: (){GoRouter.of(context).go(PagesRoute.account);},),
            SizedBox(height: 50,),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                    controller:nameController,
                    prefixIcon: Icon(Icons.person_2_outlined,color: AppColors.primaryColor,),
                    suffixIcon: Icon(Icons.edit,color: AppColors.primaryColor,),
                    label: 'Name',
                    hint: 'Esraa Mahmoud',
                    warn: 'Your Name is required',
                  ),
                  SizedBox(height: 20,),
                  CustomTextField(
                    controller: emailController,
                    validator: (value){
                      if (value != null && value.isNotEmpty) {
                        if (!isValidEmail(value)) {
                          return "Invalid email format";
                        }
                      }
                    },
                    prefixIcon: Icon(Icons.email,color: AppColors.primaryColor,),
                    suffixIcon: Icon(Icons.edit,color: AppColors.primaryColor,),
                    label: 'Email',
                    hint: 'esraamahmoud@gmail.com',
                    warn: 'Your Email is required',
                  ),
                  SizedBox(height: 20,),
                  CustomPassword(
                    controller: passwordController,
                    warn: " Password is required",
                    label: "Password",
                    hint: 'Password',
                    prefixIcon: Icon(Icons.lock,color: AppColors.primaryColor,),
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
                    validator: (value){
                      if (confirmPasswordController?.text != passwordController?.text) {
                        // print(controller?.text);
                        return "Confirm Password doesn't match the password";
                      }
                      else{
                        return null;
                      }
                    },
                    controller: confirmPasswordController,
                    secondCont: passwordController,
                    warn: " Confirm Password is required",
                    label: "Confirm Password",
                    hint: 'Confirm your Password',
                    prefixIcon: Icon(Icons.lock,color: AppColors.primaryColor,),
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
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 70, left: 20, right: 20),
        child: customElevatedButton(
          width: 500,
          foregroundColor: _isButtonEnabled ? AppColors.white : AppColors.grey,
          backgroundColor: _isButtonEnabled ? AppColors.primaryColor : AppColors.white,
          label: "Save",
          onPressed: _isButtonEnabled
              ? () {
            if (_formKey.currentState?.validate() == true) {
              GoRouter.of(context).go(PagesRoute.accountDetails);
            }
          }
              : null,
        ),
      ),
    );
  }
}
