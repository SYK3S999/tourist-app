import 'package:flutter/material.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 45,
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 20, 91, 150),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: const Text(
          'Login',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
