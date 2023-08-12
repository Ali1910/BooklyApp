import 'package:bookly/Features/Home/data/repos/homerepoimpelemntation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'ApiService.dart';

final getIt = GetIt.instance;

void setupservicelocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpelemetation>(
    HomeRepoImpelemetation(
      getIt.get<ApiService>(),
    ),
  );
}
