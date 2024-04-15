import 'package:animated_auth/controller/auth_controller.dart';
import 'package:flutter/material.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({
    super.key,
    required this.size,
    required this.isLogin,
    required this.authController,
  });
  final bool isLogin;
  final Size size;
  final AuthController authController;
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 900),
      opacity: isLogin ? 0 : 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Sign up for an account',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                  color: const Color(0xffEA4335),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/logos/google.png',
                      color: Colors.white,
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(width: 10),
                    const Text('Google', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Container(
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                  color: const Color(0xff1877F2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/logos/facebook.png',
                      color: Colors.white,
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(width: 10),
                    const Text('Facebook',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 16 * 2),
          Row(
            children: [
              Container(
                height: 1,
                width: 150,
                color: Colors.black12,
              ),
              const SizedBox(width: 10),
              const Text(
                'or',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black45,
                ),
              ),
              const SizedBox(width: 10),
              Container(
                height: 1,
                width: 150,
                color: Colors.black12,
              ),
            ],
          ),
          const SizedBox(height: 16 * 2),
          SizedBox(
            width: size.width * 0.2,
            height: 55,
            child: TextField(
              controller: authController.registernNameController,
              decoration: InputDecoration(
                hintText: 'Enter your name',
                hintStyle: const TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                ),
                filled: true,
                fillColor: Color(0xffF5F5FA),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: size.width * 0.2,
            height: 55,
            child: TextField(
              controller: authController.registerEmailController,
              decoration: InputDecoration(
                hintText: 'Enter your email',
                hintStyle: const TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                ),
                filled: true,
                fillColor: Color(0xffF5F5FA),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: size.width * 0.2,
            height: 55,
            child: TextField(
              controller: authController.registerPasswordController,
           onChanged: (value) {
             
           },
              decoration: InputDecoration(
                hintText: 'Enter your password',
                hintStyle: const TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                ),
                filled: true,
                fillColor: Color(0xffF5F5FA),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.visibility_off,
                    size: 20,
                    color: Colors.black38,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: size.width * 0.2,
            height: 55,
            child: TextField(
              controller: authController.registerConfirmPasswordController,
              decoration: InputDecoration(
                hintText: 'Confirm password',
                hintStyle: const TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                ),
                filled: true,
                fillColor: Color(0xffF5F5FA),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.visibility_off,
                    size: 20,
                    color: Colors.black38,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20 * 2),
          SizedBox(
            width: size.width * 0.2,
            height: 55,
            child: ElevatedButton(
              onPressed: () {
                authController.toggleLogin();
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                backgroundColor: Colors.black,
              ),
              child: const Text(
                'Register',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text('Already have an account?'),
            TextButton(
              onPressed: () {
                authController.toggleLogin();
              },
              child: const Text('Login'),
            ),
          ]),
        ],
      ),
    );
  }
}
