import 'package:flutter/material.dart';
import 'package:login_ui/page/login_page.dart';
import 'package:login_ui/page/resister_page.dart';

class LoginOrResister extends StatefulWidget {
  const LoginOrResister({super.key});

  @override
  State<LoginOrResister> createState() => _LoginOrResisterState();
}

class _LoginOrResisterState extends State<LoginOrResister> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginPage) {
      return LoginPage(onTap: togglePages);
  } else {
      return ResisterPage(onTap: togglePages);
    }
  }
}
