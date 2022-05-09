import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/widgets/controls/input.dart';

class Datepicker extends StatelessWidget {
  final String? label;
  final EdgeInsetsGeometry? padding;

  final input = TextEditingController();

  Datepicker({
    this.label,
    this.padding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Input(
      label: label,
      padding: padding,
      disabled: true,
      suffixIcon: const Icon(CupertinoIcons.calendar),
      onTap: () async {
        final date = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1970),
          lastDate: DateTime.now(),
        );

        print(date);
      },
    );
  }
}
