import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalDataService {

  static Future<void> init() async {
    await Hive.initFlutter();
    await Hive.openBox<dynamic>("mainApp");
  }

  static final Box _box = Hive.box("mainApp");


  static Future<void> save<T>(BoxKeys key, T data) async {
    await _box.put(key.name, data);
  }

  static T? getData<T>(BoxKeys key, dynamic defaultValue) {
    return _box.get(key.name, defaultValue: defaultValue) as T?;
  }

  static Future<void> delete(BoxKeys key) async {
    await _box.delete(key.name);
  }

  // Language Service

  static bool get isSaveLocale => _box.get("isLocale", defaultValue: false);

  static Future<void> setLocale(Locale locale) async {
    await _box.put("locale", locale.languageCode);
    await _box.put("isLocale", true);
  }
  static Future<void> clearLocale(String locale) async {
    await _box.delete("locale");
    await _box.delete("isLocale");
  }

  static Locale get getLocale => Locale(_box.get("locale", defaultValue: "uz"));
  static ValueListenable<Box<dynamic>> get localeListenable => _box.listenable(keys: ["locale"]);
}

enum BoxKeys {
  card,
  favourites,
  auth,
}