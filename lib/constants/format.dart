import 'package:flutter/material.dart';

class AppFromat {
  static const date = 'dd/MM/yyyy';

  static String formatTime(TimeOfDay time) {
    final hour = time.hour.toString().length < 2
        ? '0${time.hour}'
        : time.hour.toString();

    final minute = time.minute.toString().length < 2
        ? '0${time.hour}'
        : time.minute.toString();

    return '$hour:$minute';
  }
}
