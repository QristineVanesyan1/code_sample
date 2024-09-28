import 'package:dio/dio.dart';
import 'package:flutter_app/configs/configs.dart';
import 'package:flutter_app/core/core.dart';
import 'package:flutter_app/repos/repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferences =
    Provider<SharedPreferences>((_) => throw UnimplementedError());

final remoteDataProvider = Provider<RemoteDataSource>((ref) =>
    RemoteDataSourceImpl(Dio(
        BaseOptions(baseUrl: AppConsts.baseUrl, headers: AppConsts.header))));

final localDataProvider = Provider<LocalDataSource>((ref) =>
    LocalDataSourceImpl(sharedPreferences: ref.watch(sharedPreferences)));

final authRepositoryProvider = Provider<AuthRepository>(
    (ref) => AuthRepositoryImpl(localDataSource: ref.watch(localDataProvider)));
