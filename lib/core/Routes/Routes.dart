import 'package:go_router/go_router.dart';
import 'package:library_app/core/Routes/pageRoutes.dart';

import '../../features/Authentication/LogIn/UI/Login_View.dart';
import '../../features/Authentication/OTP/UI/OTP_View.dart';
import '../../features/Authentication/Register/UI/register_view.dart';


abstract class AppRouter {
  static final router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: PagesRoute.init,
      builder: (context, state) => const RegisterView(),
    ),
    GoRoute(
        path: PagesRoute.login,
        builder: (context,state)=> const LoginView()
    ),
    GoRoute(
        path: PagesRoute.OTP,
        builder: (context,state)=> const OtpView()
    )
  ]
  );
}