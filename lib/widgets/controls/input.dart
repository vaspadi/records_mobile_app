import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Input extends StatelessWidget {
  final String? label;
  final EdgeInsetsGeometry? padding;
  final TextInputType? keyboardType;
  final bool disabled;
  final Widget? suffixIcon;
  final void Function()? onTap;

  const Input({
    this.label,
    this.padding,
    this.keyboardType,
    this.disabled = false,
    this.suffixIcon,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: InkWell(
        onTap: onTap,
        child: TextFormField(
          keyboardType: keyboardType,
          decoration: InputDecoration(
            label: Text(label ?? ''),
            suffixIcon: suffixIcon,
          ),
          enabled: !disabled,
        ),
      ),
    );
  }
}
