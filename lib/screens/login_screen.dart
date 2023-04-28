import 'package:flutter/material.dart';

import 'package:wassim_app/widgets/formfield.dart';

import '../widgets/general_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            const Text(
              "LOGIN !",
              style: TextStyle(
                  fontSize: 29,
                  color: Color.fromARGB(255, 20, 91, 150),
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
            Form(
              child: Column(
                children: const [
                  FormFieldd(
                    obscureText: false,
                    hintText: "",
                    labelText: "email",
                    prefixIcon: Icon(
                      Icons.person_outline_rounded,
                      color: Colors.grey,
                    ),
                  ),
                  FormFieldd(
                    obscureText: true,
                    hintText: "",
                    labelText: "password",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                  ),
                  GeneralButton(),
                ],
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
