import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/constants/format.dart';
import 'package:mobile_app/widgets/controls/input.dart';

class TimePicker extends StatelessWidget {
  final String? label;
  final EdgeInsetsGeometry? padding;
  final bool time;
  final void Function(TimeOfDay?)? onChanged;

  final input = TextEditingController();

  TimePicker({
    this.label,
    this.padding,
    this.time = false,
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
      suffixIcon: const Icon(CupertinoIcons.clock),
      onTap: () async {
        final time = await showTimePicker(
            context: context,
            initialTime: const TimeOfDay(
              hour: 12,
              minute: 0,
            ));

        onChanged?.call(time);

        if (time != null) input.text = AppFromat.formatTime(time);
      },
    );
  }
}
