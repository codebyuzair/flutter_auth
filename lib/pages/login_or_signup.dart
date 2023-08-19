import 'package:flutter/material.dart';
import 'package:flutter_auth/pages/login_page.dart';
import 'package:flutter_auth/pages/sign_up_page.dart';

class LoginOrSignup extends StatefulWidget {
  const LoginOrSignup({super.key});

  @override
  State<LoginOrSignup> createState() => _LoginOrSignupState();
}

class _LoginOrSignupState extends State<LoginOrSignup> {
  bool isLogin = true;

  void togglePage() {
    setState(() {
      isLogin = !isLogin;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    if (isLogin) {
      return LoginPage(
        onPressed: togglePage,
      );
    } else {
      return  SignUp(
        onPressed: togglePage,
      );
    }
  }
}
