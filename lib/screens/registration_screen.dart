import 'package:flutter/material.dart';
import 'package:wassim_app/widgets/pics_widget.dart';

import '../widgets/formfield.dart';
import '../widgets/general_button.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
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
              "CREATE YOUR ACCOUNT !",
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
                    labelText: "First name",
                    prefixIcon: Icon(
                      Icons.person_rounded,
                      color: Colors.grey,
                    ),
                  ),
                  FormFieldd(
                    obscureText: false,
                    hintText: "",
                    labelText: "Last Name",
                    prefixIcon: Icon(
                      Icons.person_rounded,
                      color: Colors.grey,
                    ),
                  ),
                  FormFieldd(
                    obscureText: false,
                    hintText: "",
                    labelText: "email",
                    prefixIcon: Icon(
                      Icons.email_rounded,
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
                  FormFieldd(
                    obscureText: true,
                    hintText: "",
                    labelText: "Confirm password",
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                    ),
                  ),
                  GeneralButton(),
                  PicsWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
