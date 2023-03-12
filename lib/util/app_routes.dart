import 'package:secret_app/view/page/login_page.dart';
import 'package:secret_app/view/page/main_page.dart';
import 'package:secret_app/view/page/secret_page.dart';
import 'package:secret_app/view/page/setting_page.dart';
import 'package:secret_app/view/page/signup_page.dart';
import 'package:secret_app/view/page/splash_page.dart';
import 'package:secret_app/view/page/upload_page.dart';

class AppRoutes {
  static const main = MainPage.route; //메인페이지
  static const login = LoginPage.route; //로그인 페이지
  static const signup = SignupPage.route; //회원가입 페이지
  static const secret = SecretPage.route; //비밀 페이지
  static const upload = UploadPage.route; //비밀 업로드 페이지
  static const setting = SettingPage.route; //설정 페이지
  static const splash = SplashPage.route; //스플래시 페이지
}
