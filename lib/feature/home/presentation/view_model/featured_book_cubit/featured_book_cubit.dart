import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/data/model/book/book.model.dart';
import 'package:bookly_app/feature/home/data/repo/repo_home.dart';
import 'package:equatable/equatable.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.homeRepo) : super(FeaturedBookInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeatureBooks() async {
    emit(FeaturedBookLoadinr());
    var result = await homeRepo.fetchBooksBooks();
    result.fold((failure) {
      emit(
        FeaturedBookFailuer(errMess: failure.errMessage),
      );
    }, (bookModel) {
      emit(
        FeaturedBookSuccesss(booksModel: bookModel),
      );
    });
  }
}
