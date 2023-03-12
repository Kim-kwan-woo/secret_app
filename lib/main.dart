import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secret_app/controller/auth_controller.dart';
import 'package:secret_app/controller/login_controller.dart';
import 'package:secret_app/controller/secret_controller.dart';
import 'package:secret_app/controller/signup_controller.dart';
import 'package:secret_app/controller/upload_controller.dart';
import 'package:secret_app/util/app_pages.dart';
import 'package:secret_app/util/app_routes.dart';

void main() {
  runApp(const SecretApp());
}

class SecretApp extends StatelessWidget {
  const SecretApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //컨트롤러 바인딩
      initialBinding: BindingsBuilder(() {
        Get.put(AuthController());
        Get.lazyPut(() => LoginController(), fenix: true);
        Get.lazyPut(() => SignupController(), fenix: true);
        Get.lazyPut(() => SecretController(), fenix: true);
        Get.lazyPut(() => UploadController(), fenix: true);
      }),
      getPages: AppPages.pages,
      initialRoute: AppRoutes.splash, //스플래시 화면 출력
    );
  }
}
