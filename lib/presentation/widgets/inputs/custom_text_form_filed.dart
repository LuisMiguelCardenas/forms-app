import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? errorMessage;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool obscureText;

  const CustomTextFormField(
      {super.key,
      this.obscureText = false,
      this.label,
      this.hint,
      this.errorMessage,
      this.onChanged,
      this.validator});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final border = OutlineInputBorder(
      // borderSide: BorderSide(color: colors.primary),
      borderRadius: BorderRadius.circular(40),
    );
    return TextFormField(
      onChanged: onChanged,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
          enabledBorder: border,
          focusedBorder:
              border.copyWith(borderSide: BorderSide(color: colors.primary)),
          errorBorder: border.copyWith(
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: border.copyWith(
            borderSide: BorderSide(color: Colors.red),
          ),
          isDense: true,
          label: label != null ?  Text(label!) : null,
          hintText: hint,
          focusColor: colors.primary,
          errorText: errorMessage
          // prefixIcon: Icon(Icons.supervised_user_circle),
          ),
    );
  }
}
