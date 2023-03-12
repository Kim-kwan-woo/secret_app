import 'package:get/get.dart';
import 'package:secret_app/view/page/login_page.dart';
import 'package:secret_app/view/page/main_page.dart';
import 'package:secret_app/view/page/secret_page.dart';
import 'package:secret_app/view/page/setting_page.dart';
import 'package:secret_app/view/page/signup_page.dart';
import 'package:secret_app/view/page/splash_page.dart';
import 'package:secret_app/view/page/upload_page.dart';

import 'app_routes.dart';

class AppPages {
  //페이지 라우팅
  static final pages = [
    GetPage(name: AppRoutes.main, page: () => const MainPage()),
    GetPage(name: AppRoutes.login, page: () => const LoginPage()),
    GetPage(name: AppRoutes.signup, page: () => const SignupPage()),
    GetPage(name: AppRoutes.secret, page: () => const SecretPage()),
    GetPage(name: AppRoutes.upload, page: () => const UploadPage()),
    GetPage(name: AppRoutes.setting, page: () => const SettingPage()),
    GetPage(name: AppRoutes.splash, page: () => const SplashPage()),
  ];
}
