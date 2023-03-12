import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          size: 40,
          color: Colors.redAccent,
          FontAwesomeIcons.cat,
        ),
        Text(
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          '비밀듣는 고양이',
        ),
      ],
    );
  }
}
