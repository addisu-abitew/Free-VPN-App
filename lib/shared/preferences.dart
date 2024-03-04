import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Preferences {
  static late Box boxOfData;

  static Future<void> initHive() async {
    await Hive.initFlutter();
    boxOfData = await Hive.openBox('date');
  }

  // saving user chice about theme selection
  static bool get isModeDark => boxOfData.get('isModeDark') ?? false;
  static set isModeDark(bool value) => boxOfData.put('isModeDark', value);
}

extension AppTheme on ThemeData {
  Color get textColor =>
      Preferences.isModeDark ? Colors.white70 : Colors.black54;
  Color get bottomNavColor =>
      Preferences.isModeDark ? Colors.white12 : Colors.redAccent;
}
