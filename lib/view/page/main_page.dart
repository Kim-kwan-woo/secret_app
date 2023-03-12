import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secret_app/util/app_routes.dart';
import 'package:secret_app/view/widget/app_logo.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});
  static const route = '/main';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AppLogo(),
          const SizedBox(height: 12),
          //비밀페이지로 이동
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              tileColor: Colors.black12,
              title: const Text('비밀 보기'),
              subtitle: const Text('모든 비밀을 확인하기'),
              trailing: const Icon(Icons.navigate_next),
              onTap: () => Get.toNamed(AppRoutes.secret),
            ),
          ),
          //작성자들 페이지로 이동
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              tileColor: Colors.black12,
              title: const Text('비밀 만들기'),
              subtitle: const Text('나의 비밀 작성하기'),
              trailing: const Icon(Icons.navigate_next),
              onTap: () => Get.toNamed(AppRoutes.upload),
            ),
          ),
          //비밀 업로드 페이지로 이동
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              tileColor: Colors.black12,
              title: const Text('설정'),
              subtitle: const Text('내 정보 설정하기'),
              trailing: const Icon(Icons.navigate_next),
              onTap: () => Get.toNamed(AppRoutes.setting),
            ),
          ),
        ],
      ),
    );
  }
}
