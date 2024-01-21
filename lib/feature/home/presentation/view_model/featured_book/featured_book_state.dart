part of 'featured_book_cubit.dart';

sealed class FeaturedBookState extends Equatable {
  const FeaturedBookState();

  @override
  List<Object> get props => [];
}

final class FeaturedBookInitial extends FeaturedBookState {}

final class FeaturedBookLoadinr extends FeaturedBookState {}

final class FeaturedBookFailuer extends FeaturedBookState {
  final String errMess;

  const FeaturedBookFailuer({required this.errMess});
}

final class FeaturedBookSuccesss extends FeaturedBookState {
  final BooksModel booksModel;

  const FeaturedBookSuccesss({required this.booksModel});
}
