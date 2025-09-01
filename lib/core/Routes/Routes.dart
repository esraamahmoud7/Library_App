import 'package:go_router/go_router.dart';
import 'package:library_app/core/Routes/pageRoutes.dart';
import 'package:library_app/features/Authentication/forgetPassword/UI/changePassView.dart';
import 'package:library_app/features/Authentication/forgetPassword/UI/forgetPassword.dart';
import 'package:library_app/features/Services/GradProjects/UI/ProjectView.dart';
import 'package:library_app/features/welcome/UI/NavigatorControl.dart';
import 'package:library_app/features/welcome/UI/welcomeScreen.dart';

import '../../features/Authentication/LogIn/UI/Login_View.dart';
import '../../features/Authentication/OTP/UI/OTP_View.dart';
import '../../features/Authentication/Register/UI/register_view.dart';
import '../../features/welcome/UI/Splach Screen.dart';


abstract class AppRouter {
  static final router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: PagesRoute.welcome,
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      path: PagesRoute.home,
      builder: (context, state) => const NavigatorControl(),
    ),
    GoRoute(
      path: PagesRoute.splash,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: PagesRoute.register,
      builder: (context, state) => const RegisterView(),
    ),
    GoRoute(
        path: PagesRoute.login,
        builder: (context,state)=> const LoginView()
    ),
    GoRoute(
        path: PagesRoute.OTP,
        builder: (context,state)=> const OtpView()
    ),
    GoRoute(
        path: PagesRoute.forgetPass,
        builder: (context,state)=> const ForgetPasswordView()
    ),
    GoRoute(
        path: PagesRoute.changePass,
        builder: (context,state)=> const ChangePassView()
    )
  ]
  );
}