import 'dart:async';
import '../configs/configs.dart';

abstract class LocalDataSource {
  Future<bool> getSession();
  Future<void> setSession();
  Future<void> clearAllData();
}

class LocalDataSourceImpl extends LocalDataSource {
  LocalDataSourceImpl({required this.sharedPreferences});
  SharedPreferences sharedPreferences;

  @override
  Future<bool> getSession() async {
    return sharedPreferences.getBool(AppConsts.session) ?? false;
  }

  @override
  Future<void> setSession() async {
    await sharedPreferences.setBool(AppConsts.session, true);
  }

  @override
  Future<void> clearAllData() async {
    await sharedPreferences.clear();
  }
}
