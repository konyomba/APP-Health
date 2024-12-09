import 'package:flutter/material.dart';
import 'package:ihealth/components/my_button.dart';
import 'package:ihealth/components/my_textfield.dart';

class Login extends StatelessWidget {
  Login({super.key});
  //text controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  //sign method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Welcome Back!',
                style: TextStyle(color: Colors.black, fontSize: 35),
              ),
              const SizedBox(
                height: 25,
              ),
              //login textfields for username
              MyTextfield(
                controller: usernameController,
                hintText: 'Username',
                obsecureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              //password textfield
              MyTextfield(
                controller: passwordController,
                hintText: 'password',
                obsecureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              //forgot password
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              //login button
              MyButton(
                onTap: signUserIn,
              ),
              const SizedBox(
                height: 50,
              ),

              Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 1,
                    color: Colors.blue[600],
                  )),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Or Continue With',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'images/google.png',
                        height: 72,
                      )
                    ],
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 1,
                    color: Colors.blue[600],
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
