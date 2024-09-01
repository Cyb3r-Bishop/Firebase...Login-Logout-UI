import 'package:flutter/material.dart';
import 'package:login_ui/components/my_button.dart';
import 'package:login_ui/components/my_textfield.dart';

class ResisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final void Function()? onTap;
  ResisterPage({
    super.key, 
    this.onTap,
  });

  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Stack(
            children: [
              Positioned(
                top: 20,left: 230,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade300,
                    shape: BoxShape.circle,
                  )
                ),
              ),
              Positioned(
                top: 20,left: 280,
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade300,
                    shape: BoxShape.circle,
                  )
                ),
              ),
              Positioned(
                bottom: 100,right: 285,
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade300,
                    shape: BoxShape.circle,
                  )
                ),
              ),
              Positioned(
                bottom: 20,right: 330,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade300,
                    shape: BoxShape.circle,
                  )
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Create Account",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                      ),
                      const SizedBox(height: 5),
                      const SizedBox(height: 50),
                      MyTextField(
                        hintText: "Email",
                        icon: const Icon(Icons.mail_outline),
                        controller: _emailController,
                        obsecureText: false,
                      ),
                      MyTextField(
                        hintText: "Password",
                        icon: const Icon(Icons.lock_outline_sharp),
                        controller: _passwordController,
                        obsecureText: true,
                      ),
                      MyTextField(
                        hintText: "Confirm Password",
                        icon: const Icon(Icons.lock_open_outlined),
                        controller: _confirmPasswordController,
                        obsecureText: true,
                      ),
                      const SizedBox(height: 25),
                      MyButton(
                        text: 'Resister',
                        onPressed: login,
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already Have an account? '),
                          GestureDetector(
                            onTap: onTap,
                            child: Text(
                              'Login here',
                              style: TextStyle(
                                color: Colors.purple[600],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}