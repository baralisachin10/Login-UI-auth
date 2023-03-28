import 'package:flutter/material.dart';
import 'package:form_validation/components/square_tiles.dart';
import 'package:form_validation/components/text_field.dart';

import '../components/my_button.dart';

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

  //sign in user
  void signInUser() {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(224, 224, 224, 1),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 25,
              ),
              //logo
              const Icon(
                Icons.lock,
                size: 70,
              ),

              //welcome back you have been missed
              const SizedBox(height: 40),
              Text(
                'Welcome back you\'ve been missed.',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              // TextField for username
              const SizedBox(height: 30),
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
                suffixIcon:
                    isObscureText ? Icons.visibility_off : Icons.visibility,
                onPressed: showPasswordHandler,
              ),

              //forgot password
              const SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [Text('Forget Password?')],
                ),
              ),

              // signin button

              const SizedBox(
                height: 25,
              ),
              MyButton(
                onTap: signInUser,
              ),

              // or continue with
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 1,
                      color: Colors.grey[400],
                    )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'or Continue with',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              // google + apple signin button
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // google button
                  SquareTile(imagePath: 'lib/images/google.png'),
                  SizedBox(
                    width: 15,
                  ),
                  // apple button
                  SquareTile(imagePath: 'lib/images/apple.png'),
                ],
              ),

              //not a member? register now
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
