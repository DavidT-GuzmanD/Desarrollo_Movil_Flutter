import 'package:cntnr_flox/components/text_field_container.dart';
import 'package:cntnr_flox/constants.dart';
import 'package:flutter/material.dart';

class RoudedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoudedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}