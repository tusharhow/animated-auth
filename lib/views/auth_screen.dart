import 'package:animated_auth/controller/auth_controller.dart';
import 'package:animated_auth/widgets/login_widget.dart';
import 'package:animated_auth/widgets/register_widget.dart';
import 'package:animated_auth/widgets/top_overlay.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Center(
        child: Stack(
          children: [
            Container(
                height: size.height * 0.8,
                width: size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 0.05,
                    right: size.width * 0.05,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Consumer<AuthController>(
                            builder: (context, authController, child) {
                          return RegisterWidget(
                            size: size,
                            isLogin: authController.isLogin,
                            authController: authController,
                          );
                        }),
                        Consumer<AuthController>(
                            builder: (context, authController, child) {
                          return LoginWidget(
                            size: size,
                            isLogin: authController.isLogin,
                            authController: authController,
                          );
                        }),
                      ]),
                )),
            TopOverlayWidget(size: size),
          ],
        ),
      ),
    );
  }
}
