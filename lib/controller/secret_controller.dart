import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:secret_app/model/custom_dio.dart';
import 'package:secret_app/model/secret.dart';
import 'package:secret_app/util/api_routes.dart';

class SecretController extends GetxController {
  RxList<Secret> secrets = RxList();
  final Dio dio = CustomDio().dioInstance;

  readSecrets() async {
    try {
      //네트워크 데이터 요청(비밀 리스트)
      var res = await dio.get(ApiRoutes.getSecrets);

      if (res.statusCode == 200) {
        List<Map<String, dynamic>> data =
            List<Map<String, dynamic>>.from(res.data['items']);

        //data serialization 후 저장
        secrets.addAll(data.map((e) => Secret.fromMap(e)).toList());
      }
    } on DioError catch (e) {
      print(e);
    }
  }

  @override
  void onInit() {
    super.onInit();
    readSecrets(); //비밀 데이터 가져오기
  }
}
