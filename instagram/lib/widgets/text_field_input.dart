import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final hinText;
  final TextInputType textInputType;

  const TextFieldInput(
      {Key? key,
      required this.textEditingController,
      this.isPass = false,
      this.hinText,
      required this.textInputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
          hintText: hinText,
          border: InputBorder,
          focusedBorder: InputBorder,
          enabledBorder: InputBorder,
          filled: true,
          contentPadding: const EdgeInsets.all(8)),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
