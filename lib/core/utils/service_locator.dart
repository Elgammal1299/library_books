import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/feature/home/data/repo/repo_home_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServieceLocator() {
  getIt.registerSingleton<ApiServices>(
    ApiServices(
      dio: Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiServices>(),
    ),
  );
}
