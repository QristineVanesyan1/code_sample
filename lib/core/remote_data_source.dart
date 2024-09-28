import 'package:dio/dio.dart';
import 'dart:developer' as dev;

abstract class RemoteDataSource {}

class RemoteDataSourceImpl extends RemoteDataSource {
  RemoteDataSourceImpl(this._dio);
  final Dio _dio;
}
