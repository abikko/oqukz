import 'package:hive/hive.dart';
import 'package:oqukz/data/local/hive_helper.dart';

class SettingsDao {
  static bool get isAuthorized =>
      Hive.box(HiveHelper.keySettings).get(HiveHelper.settingsIsAuthotized);
  static set isAuthorized(bool value) => Hive.box(HiveHelper.keySettings)
      .put(HiveHelper.settingsIsAuthotized, value);
  static bool get isStudent =>
      Hive.box(HiveHelper.keySettings).get(HiveHelper.settingsIsStudent);
  static set isStudent(bool value) =>
      Hive.box(HiveHelper.keySettings).put(HiveHelper.settingsIsStudent, value);
  static set phone(String phone) =>
      Hive.box(HiveHelper.keySettings).put(HiveHelper.settingsPhone, phone);
  static String get phone =>
      Hive.box(HiveHelper.keySettings).get(HiveHelper.settingsPhone, defaultValue: "+77479094214");
}
