import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/data/model/book/book.model.dart';
import 'package:bookly_app/feature/home/data/repo/repo_home.dart';
import 'package:equatable/equatable.dart';

part 'smililar_books_state.dart';

class SmililarBooksCubit extends Cubit<SmililarBooksState> {
  SmililarBooksCubit(this.homeRepo) : super(SmililarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSmililarBooks({required String category}) async {
    emit(SmililarBooksLoading());
    var result = await homeRepo.fetchSimilarBooke(category: category);
    result.fold((failure) {
      emit(
        SmililarBooksFailuer(errMessage: failure.errMessage),
      );
    }, (bookModel) {
      emit(
        SmililarBooksSuccess(booksModel: bookModel),
      );
    });
  }
}
