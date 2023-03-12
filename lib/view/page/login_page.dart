import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secret_app/controller/login_controller.dart';
import 'package:secret_app/util/app_routes.dart';
import 'package:secret_app/view/widget/app_logo.dart';
import 'package:secret_app/view/widget/custom_button.dart';
import 'package:secret_app/view/widget/custom_text_field.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});
  static const route = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AppLogo(),
          const SizedBox(height: 16),
          //아이디 텍스트 필드
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
              hintText: '아이디',
              controller: controller.idController,
            ),
          ),
          //패스워드 텍스트 필드
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomTextField(
              hintText: '비밀번호',
              controller: controller.pwController,
            ),
          ),
          //로그인 정보 저장 체크박스
          Row(
            children: [
              Obx(
                () => Checkbox(
                  activeColor: Colors.redAccent,
                  value: controller.isLoginInfoSave.value,
                  onChanged: controller.checkLoginInfoSave,
                ),
              ),
              const Text('로그인 정보 저장'),
            ],
          ),
          CustomButton(
            margin: const EdgeInsets.all(8.0),
            text: '로그인',
            onPressed: () {
              controller.login();
            },
          ),
          //회원가입 페이지 이동
          TextButton(
            onPressed: () => Get.toNamed(AppRoutes.signup),
            style: TextButton.styleFrom(
              foregroundColor: Colors.redAccent,
            ),
            child: const Text('회원가입'),
          ),
        ],
      ),
    );
  }
}
