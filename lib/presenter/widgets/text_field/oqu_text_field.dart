import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OquTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? inputType;
  final String hintText;

  const OquTextField(
      {Key? key,
      required this.controller,
      this.inputType,
      required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      decoration: InputDecoration(
        labelText: hintText,
        hintText: hintText,
      ),
    );
  }
}
