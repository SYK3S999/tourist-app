import 'package:flutter/material.dart';

class FormFieldd extends StatefulWidget {
  final bool obscureText;

  final String hintText;

  final String labelText;

  final Icon? prefixIcon;
  const FormFieldd({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.labelText,
    required this.prefixIcon,
  });

  @override
  State<FormFieldd> createState() => _FormFielddState();
}

class _FormFielddState extends State<FormFieldd> {
  TextEditingController userInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        margin: const EdgeInsets.symmetric(vertical: 15),
        child: TextFormField(
          obscureText: widget.obscureText,
          controller: userInput,
          style: const TextStyle(
            fontSize: 15,
          ),
          decoration: InputDecoration(
            filled: true, //<-- SEE HERE
            fillColor: const Color.fromRGBO(246, 245, 255, 100),
            focusColor: Colors.white,
            //add prefix icon
            prefixIcon: widget.prefixIcon,

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),

            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.blue, width: 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),

            hintText: widget.hintText,

            //make hint text
            hintStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),

            //create lable
            labelText: widget.labelText,
            //lable style
            labelStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
