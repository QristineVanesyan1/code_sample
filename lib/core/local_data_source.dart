import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LocalDataSource {
  Future<void> getSession();
  Future<void> setSession();
  Future<void> clearAllData();
}

class LocalDataSourceImpl extends LocalDataSource {
  LocalDataSourceImpl({required this.sharedPreferences});
  SharedPreferences sharedPreferences;

  @override
  Future<void> getSession() async {}

  @override
  Future<void> setSession() async {}

  @override
  Future<void> clearAllData() async {
    await sharedPreferences.clear();
  }
}
