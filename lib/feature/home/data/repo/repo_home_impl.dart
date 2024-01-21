import 'package:bookly_app/core/errors/failuer.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/feature/home/data/model/book/book.model.dart';
import 'package:bookly_app/feature/home/data/repo/repo_home.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failuer, BooksModel>> fetchBooksHome() async {
    try {
      var json = await apiServices.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:sport&Sorting=newest');
      var data = BooksModel.fromJson(json);
      return right(data);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
