import 'package:flutter/material.dart';

class Textinput extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hinttext;
  final bool iscorect;
  final TextInputType textInputType;
  const Textinput(
      {super.key,
      required this.textEditingController,
      required this.iscorect,
      required this.hinttext,
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      style: const TextStyle(color: Colors.white),
      controller: textEditingController,
      obscureText: iscorect,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),
        hintText: hinttext,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueAccent),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        filled: true,
        fillColor: const Color.fromARGB(255, 29, 28, 28),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.blue),
        ),
      ),
    );
  }
}
