import 'package:crypto_app/crypto_coins_list_app.dart';
import 'package:crypto_app/repositories/crypto_coins/crypto_coin_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt.I.registerLazySingleton(
    () => CryptoCoinRepository(
      dio: Dio(),
    ),
  );
  runApp(const CryptoCurrenciesListApp());
}
