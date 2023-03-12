import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secret_app/controller/secret_controller.dart';
import 'package:secret_app/view/widget/app_logo.dart';

class SecretPage extends GetView<SecretController> {
  const SecretPage({super.key});
  static const route = '/secret';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          //배경 이미지
          image: DecorationImage(
            image: NetworkImage(
              'https://cdn.pixabay.com/photo/2018/07/31/20/27/silhouette-3575860_960_720.png',
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.white70, BlendMode.lighten),
          ),
        ),
        child: Obx(
          //비밀들 페이지 뷰
          () => PageView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: controller.secrets.length,
            itemBuilder: (context, index) {
              var currentSecret = controller.secrets[index];
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const AppLogo(), //앱 로고
                    const SizedBox(height: 16),
                    //비밀 텍스트
                    Text(
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                      currentSecret.secret,
                    ),
                    const SizedBox(height: 16),
                    //작성자
                    Text(
                      currentSecret.authorName ?? '익명',
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
