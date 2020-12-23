import 'package:flutter/material.dart';

import 'src/di/injection.dart';
import 'src/ui/app.dart';

void main() {
  AppModule.setup();
  runApp(MyApp());
}
