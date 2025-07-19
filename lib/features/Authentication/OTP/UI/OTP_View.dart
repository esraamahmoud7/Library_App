import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:library_app/features/Authentication/OTP/UI/widgets/imputBox.dart';

import '../../../../core/Routes/pageRoutes.dart';
import '../../../../core/colors/AppColors.dart';
import '../../../../core/theme/appTheme.dart';
import '../../Register/UI/widgets/customElevatedButton.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {

  final field1 = TextEditingController();
  final field2 = TextEditingController();
  final field3 = TextEditingController();
  final field4 = TextEditingController();
  bool _isButtonEnabled = false;
  final _formKey = GlobalKey<FormState>();
  int _secondsRemaining = 60;
  late final timer;

  void _checkFieldsFilled() {
    setState(() {
      _isButtonEnabled = field1.text.isNotEmpty &&
          field2.text.isNotEmpty &&
          field3.text.isNotEmpty &&
          field4.text.isNotEmpty;
    });
  }
  @override
  void initState() {
    super.initState();
    startTimer();
    // Listen to all controllers
    field1.addListener(_checkFieldsFilled);
    field2.addListener(_checkFieldsFilled);
    field3.addListener(_checkFieldsFilled);
    field4.addListener(_checkFieldsFilled);
  }
  // when it will start
  void startTimer() {
    timer = Future.delayed(const Duration(seconds: 1), tick);
  }

  void tick() {
    if (_secondsRemaining > 0) {
      setState(() => _secondsRemaining--);
      startTimer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Verify your email address",
            style: AppStyles.textStyle26.copyWith(
            fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text.rich(
                TextSpan(
                  text: "We sent you a 4 digit code to verify\n",
                  style: AppStyles.textStyle22,
                  children: [
                    TextSpan(
                      text: "your email address ",
                    ),
                    TextSpan(
                      text: "(email)",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: "."),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Enter in the field below.",
              style: AppStyles.textStyle22,
            ),
            SizedBox(height:50 ,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Form(
                key: _formKey,
                child: Row(
                  children: [
                    InputBox(controller: field1,),
                    InputBox(controller: field2,),
                    InputBox(controller: field3,),
                    InputBox(controller: field4,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Didn’t get the code? ",
                style:AppStyles.textStyle18.copyWith(
                  fontWeight: FontWeight.normal
                  ),
                ),
                Text("Resend",
                  style:AppStyles.textStyle18.copyWith(
                      fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Expires in ",
                  style:AppStyles.textStyle18.copyWith(
                      fontWeight: FontWeight.normal
                  ),
                ),
                Text("$_secondsRemaining",
                  style:AppStyles.textStyle18.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor
                  ),
                ),
              ],
            ),
            const SizedBox(height: 101,),
            customElevatedButton(
                label: "Submit",
                foregroundColor: _isButtonEnabled ? AppColors.black : AppColors.primaryColor,
                backgroundColor: _isButtonEnabled ? AppColors.primaryColor : AppColors.grey,
                onPressed: _isButtonEnabled
                    ? () {
                  if (_formKey.currentState?.validate() == true) {
                    GoRouter.of(context).push(PagesRoute.login);
                  }
                }
                    : null,

            )
          ]
        )
      )
    );
  }
}
