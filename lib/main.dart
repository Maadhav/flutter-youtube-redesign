import 'Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark,
  );
  SystemUiOverlayStyle(statusBarColor: Colors.amber);
  SystemChrome.setApplicationSwitcherDescription(
    ApplicationSwitcherDescription(
      label: 'YouTube', primaryColor: 0XFFff5a5f)
      );
  runApp(
    Youtube(),
  );
}
