import 'package:flutter/material.dart';
import 'package:mobile_app/dependency_injection.dart';

import 'app.dart';

void main() async {
  await DependencyInjection.init();
  runApp(const App());
}
