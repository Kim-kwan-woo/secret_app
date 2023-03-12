import 'package:dio/dio.dart';

class CustomDio {
  static final CustomDio _instance = CustomDio._internal(); //인스턴스
  static Dio? _dio; //dio 객체

  CustomDio._internal() {
    // Initialize Dio instance
    _dio = Dio(BaseOptions(baseUrl: 'http://52.79.115.43:8090/'));
  }

  //CustomDio 팩토리 생성자
  factory CustomDio() {
    return _instance;
  }

  //dio 객체 리턴
  Dio get dioInstance => _dio!;
}
