import 'package:flutter_app/core/local_data_source.dart';

abstract class AuthRepository {
  Future<bool> getSession();
  Future<void> setSession();
  Future<void> clearAllData();
}

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({required this.localDataSource});
  final LocalDataSource localDataSource;

  @override
  Future<void> setSession() async {
    await localDataSource.setSession();
  }

  @override
  Future<bool> getSession() async {
    return await localDataSource.getSession();
  }

  @override
  Future<void> clearAllData() async {
    await localDataSource.clearAllData();
  }
}
