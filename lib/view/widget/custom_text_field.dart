import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      this.maxLines,
      required this.hintText,
      required this.controller});

  final int? maxLines; //최대 라인 수
  final String hintText; //힌트 텍스트
  final TextEditingController controller; //컨트롤러

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLines ?? 1,
      cursorColor: Colors.redAccent,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.redAccent,
          ),
        ),
        focusColor: Colors.redAccent,
        border: const OutlineInputBorder(
          borderSide: BorderSide(),
        ),
        hintText: hintText,
      ),
    );
  }
}
