import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/data/model/book/book.model.dart';
import 'package:bookly_app/feature/home/data/repo/repo_home.dart';
import 'package:equatable/equatable.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewesetBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchNewesetBooks();
    result.fold((failure) {
      emit(
        NewsetBooksFailuer(errMessage: failure.errMessage),
      );
    }, (bookModel) {
      emit(
        NewsetBooksSuccess(booksModel: bookModel),
      );
    });
  }
}
