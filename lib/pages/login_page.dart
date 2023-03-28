import 'package:flutter/material.dart';
import 'package:form_validation/components/text_field.dart';

class LogInPage extends StatefulWidget {
  LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  //text editing controller
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  bool isObscureText = true;

  void showPasswordHandler() {
    setState(() {
      isObscureText = !isObscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(224, 224, 224, 1),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              //logo
              const Icon(
                Icons.lock,
                size: 70,
              ),

              //welcome back you have been missed
              const SizedBox(height: 50),
              Text(
                'Welcome back you\'ve been missed.',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              // TextField for username
              const SizedBox(height: 50),
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
                prefixIcon: const Icon(Icons.email, color: Colors.grey),
                suffixIcon: null,
                onPressed: null,
              ),

              // TextField for password
              const SizedBox(height: 25),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: isObscureText,
                prefixIcon: const Icon(Icons.password, color: Colors.grey),
                suffixIcon: isObscureText? Icons.remove_red_eye : Icons.,
                onPressed: showPasswordHandler,
              ),

              //forgot password

              // signin button

              // or continue with

              // google + apple signin button
            ],
          ),
        ),
      ),
    );
  }
}
