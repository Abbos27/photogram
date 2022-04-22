import 'package:photogram/routes/app_routes.dart';
import 'package:photogram/ui/log_in.dart';
import 'package:photogram/ui/log_out.dart';
import 'package:photogram/ui/profile.dart';
import 'package:photogram/ui/register_one.dart';
import 'package:photogram/ui/register_two.dart';

class AppPages {
  static final page = {
    AppRoutes.initial: (context) => LogOut(),
    AppRoutes.registerOne: (context) => const RegisterOne(),
    AppRoutes.registerTwo: (context) => const RegisterTwo(),
    AppRoutes.logIn: (context) => const LogIn(),
    AppRoutes.profile: (context) => const Profile(),
  };
}
