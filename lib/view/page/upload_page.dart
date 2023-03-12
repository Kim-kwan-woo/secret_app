import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secret_app/controller/upload_controller.dart';
import 'package:secret_app/view/widget/app_logo.dart';
import 'package:secret_app/view/widget/custom_button.dart';
import 'package:secret_app/view/widget/custom_text_field.dart';

class UploadPage extends GetView<UploadController> {
  const UploadPage({super.key});
  static const route = '/upload';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppLogo(), //앱 로고
            const SizedBox(height: 16),
            //비밀 입력 텍스트 필드
            CustomTextField(
              maxLines: 6,
              hintText: '비밀을 입력하세요.',
              controller: controller.textController,
            ),
            //익명 체크박스
            Row(
              children: [
                Obx(
                  () => Checkbox(
                    activeColor: Colors.redAccent,
                    value: controller.isNameRevealed.value,
                    onChanged: controller.checkNameRevealed,
                  ),
                ),
                const Text('내 이름 공개하기'),
              ],
            ),
            //비밀 업로드 버튼
            CustomButton(
              text: '비밀 업로드',
              onPressed: () async {
                await controller.uploadSecret();
                if (controller.textController.text != '') {
                  Get.back();
                  Get.snackbar('비밀 업로드', controller.resultMsg);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
