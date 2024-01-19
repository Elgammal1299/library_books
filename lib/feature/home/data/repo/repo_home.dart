import 'package:bookly_app/core/errors/failuer.dart';
import 'package:bookly_app/feature/home/data/model/book/book.model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuer, BooksModel>> fetchHooksHome();
}
