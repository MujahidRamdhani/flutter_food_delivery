import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //logo
          Icon(
            Icons.lock_open_outlined,
            size: 100,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(height: 20),
          //message, app slogan
          Text(
            "Food Devlivery App",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(height: 20),
          //email textfield
          MyTextfield(
              controller: emailController,
              hintText: "Email",
              obscureText: false),

          //password textfield
          const SizedBox(height: 10),
          MyTextfield(
              controller: passwordController,
              hintText: "Password",
              obscureText: true),
          //confirm password
          const SizedBox(height: 10),
          MyTextfield(
              controller: confirmpasswordController,
              hintText: "Confirm Password",
              obscureText: true),

          //sign in button
          const SizedBox(height: 20),
          MyButton(text: "Sign In", onTap: () {}),
          const SizedBox(height: 20),
          // not a member? register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "already have an account ?",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  "Login now",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
