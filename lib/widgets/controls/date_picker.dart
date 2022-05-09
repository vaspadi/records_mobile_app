import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_app/widgets/controls/input.dart';

class DatePicker extends StatelessWidget {
  final String? label;
  final EdgeInsetsGeometry? padding;
  final void Function(DateTime?)? onChanged;

  final input = TextEditingController();

  DatePicker({
    this.label,
    this.padding,
    this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Input(
      controller: input,
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

        onChanged?.call(date);

        if (date != null) input.text = DateFormat('MM/dd/yyyy').format(date);
      },
    );
  }
}
