import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String? label;
  final EdgeInsetsGeometry? padding;
  final TextInputType? keyboardType;
  final bool disabled;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final void Function()? onTap;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;

  const Input({
    this.label,
    this.padding,
    this.keyboardType,
    this.disabled = false,
    this.suffixIcon,
    this.controller,
    this.onTap,
    this.onChanged,
    this.validator,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: InkWell(
        onTap: onTap,
        child: TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            label: Text(label ?? ''),
            suffixIcon: suffixIcon,
          ),
          enabled: !disabled,
          onChanged: onChanged,
          validator: validator,
        ),
      ),
    );
  }
}
