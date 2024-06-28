import 'package:flutter/material.dart';
import 'package:freshproject/constant/constant.dart';

class AppTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool isPassword;
  const AppTextField(
      {super.key,
      this.isPassword = false,
      required this.controller,
      this.validator});

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword ? isObscure : false,
      validator: widget.validator,
      controller: widget.controller,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
          suffixIcon: widget.isPassword
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  child:
                      Icon(isObscure ? Icons.visibility : Icons.visibility_off))
              : null,
          border: UnderlineInputBorder(),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  style: BorderStyle.solid, color: AppColor.primary))),
    );
  }
}
