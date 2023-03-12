import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secret_app/controller/signup_controller.dart';
import 'package:secret_app/view/widget/app_logo.dart';
import 'package:secret_app/view/widget/custom_button.dart';
import 'package:secret_app/view/widget/custom_text_field.dart';

class SignupPage extends GetView<SignupController> {
  const SignupPage({super.key});
  static const route = '/signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: AppLogo(),
              ),
              //이메일 입력 필드
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextField(
                  hintText: '이메일',
                  controller: controller.emailController,
                ),
              ),
              //비밀번호 입력 필드
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextField(
                  hintText: '비밀번호',
                  controller: controller.pwController,
                ),
              ),
              //비밀번호 확인 입력 필드
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextField(
                  hintText: '비밀번호 확인',
                  controller: controller.pwConfirmController,
                ),
              ),
              //닉네임 입력 필드
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomTextField(
                  hintText: '닉네임',
                  controller: controller.userNameController,
                ),
              ),
              //입력 형식 오류 메세지
              Obx(
                () => Text(
                  style: const TextStyle(
                    color: Colors.redAccent,
                  ),
                  controller.errorMsg.value,
                ),
              ),
              //회원가입 버튼
              CustomButton(
                margin: const EdgeInsets.all(8.0),
                text: '회원가입',
                onPressed: () async {
                  if (await controller.signup()) {
                    Get.back();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
