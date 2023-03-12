import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secret_app/controller/auth_controller.dart';
import 'package:secret_app/model/custom_dio.dart';
import 'package:secret_app/util/api_routes.dart';

class UploadController extends GetxController {
  var textController = TextEditingController();
  String resultMsg = '';
  RxBool isNameRevealed = false.obs;
  final Dio dio = CustomDio().dioInstance;

  //비밀 업로드
  uploadSecret() async {
    if (textController.text == '') return;

    var controller = Get.find<AuthController>();
    try {
      var res = await dio.post(
        ApiRoutes.uploadSecret,
        data: {
          'secret': textController.text,
          'author': controller.user!.id,
          'authorName': isNameRevealed.value ? controller.user!.username : ''
        },
      );

      if (res.statusCode == 200) {
        resultMsg = '비밀을 성공적으로 업로드했습니다.';
      }
    } on DioError catch (e) {
      resultMsg = '[ERROR]비밀 업로드에 실패하였습니다.';
      print(e);
    }
  }

  //내 이름 공개하기 체크박스 onChanged 핸들러
  checkNameRevealed(bool? value) {
    if (value != null) {
      isNameRevealed(value);
    }
  }
}
