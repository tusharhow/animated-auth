import 'package:animated_auth/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TopOverlayWidget extends StatelessWidget {
  const TopOverlayWidget({super.key, required this.size});

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthController>(builder: (context, authController, child) {
      return AnimatedPositioned(
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeInOut,
        left: authController.isLogin ? size.width * 0.03 : size.width * 0.48,
        top: size.height * 0.01,
        bottom: size.height * 0.01,
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: GestureDetector(
            onTap: () {
              authController.toggleLogin();
            },
            child: Container(
              height: size.height * 0.8,
              width: 550,
              decoration: BoxDecoration(
                color: const Color(0xff2F33C0),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  const BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Image.asset('assets/images/shape.png'),
                  Positioned(
                    top: size.height * 0.2,
                    left: 0,
                    right: size.width * 0.03,
                    child: Image.asset(
                      'assets/images/cards.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  AnimatedPositioned(
                      duration: const Duration(milliseconds: 900),
                      curve: Curves.easeInOut,
                      top: size.height * 0.02,
                      left: authController.isLogin
                          ? size.width * 0.02
                          : size.width * 0.25,
                      child: Image.asset(
                        authController.isLogin
                            ? 'assets/icons/login.png'
                            : 'assets/icons/register.png',
                        height: 40,
                        width: 40,
                        color: Colors.white,
                      )),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 900),
                    top: size.height * 0.12,
                    left: authController.isLogin
                        ? size.width * 0.02
                        : size.width * 0.25,
                    child: Image.asset(
                      'assets/logos/logo.png',
                      height: 50,
                      width: 50,
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 900),
                    top: size.height * 0.19,
                    left: authController.isLogin
                        ? size.width * 0.02
                        : size.width * 0.16,
                    child: const Text(
                      'Banking with us!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
