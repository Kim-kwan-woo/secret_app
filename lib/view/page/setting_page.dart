import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:secret_app/controller/auth_controller.dart';
import 'package:secret_app/view/widget/app_logo.dart';

class SettingPage extends GetView<AuthController> {
  const SettingPage({super.key});
  static const route = '/setting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const AppLogo(), //앱 로고
              const SizedBox(height: 16),
              //유저 정보 출력
              ListTile(
                title: Text(controller.user!.username),
                subtitle: const Text('안녕하세요'),
                leading: CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  child: Text(
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    controller.user!.username[0],
                  ),
                ),
              ),
              //리스트 타일을 누르면 로그아웃
              ListTile(
                title: const Text('로그아웃'),
                leading: const Icon(FontAwesomeIcons.rightFromBracket),
                onTap: controller.logout,
              )
            ],
          ),
        ),
      ),
    );
  }
}
