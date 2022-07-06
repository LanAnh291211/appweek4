import 'package:flutter/material.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/widgets/text%20fields/custom_text_field.dart';

class PasswordTextField extends StatefulWidget {
  final String hintText;
  final String? Function(String?)? validator;
  final String label;
  final TextEditingController? controller;

  const PasswordTextField({
    Key? key,
    required this.hintText,
    this.validator,
    this.controller,
    this.label = "",
  }) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool hideText = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hintText: widget.hintText,
      label: widget.label,
      obscureText: hideText,
      suffixIcon: hideText ? AppImages.icHidePass : AppImages.icShowPass,
      suffixIconSize: hideText ? IconSize.verySmall : IconSize.small,
      suffixIconOnTap: () => setState(() {
        hideText = !hideText;
      }),
      validator: widget.validator,
      controller: widget.controller,
    );
  }
}
