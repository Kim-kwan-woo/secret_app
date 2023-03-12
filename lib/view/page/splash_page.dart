import 'package:flutter/material.dart';
import 'package:secret_app/view/widget/app_logo.dart';
import 'package:animate_do/animate_do.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  static const route = '/splash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeIn(
        child: const Center(
          child: AppLogo(),
        ),
      ),
    );
  }
}
