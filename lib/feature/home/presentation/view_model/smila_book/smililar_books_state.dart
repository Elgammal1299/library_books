part of 'smililar_books_cubit.dart';

sealed class SmililarBooksState extends Equatable {
  const SmililarBooksState();

  @override
  List<Object> get props => [];
}

final class SmililarBooksInitial extends SmililarBooksState {}

final class SmililarBooksLoading extends SmililarBooksState {}

final class SmililarBooksFailuer extends SmililarBooksState {
  final String errMessage;

  const SmililarBooksFailuer({required this.errMessage});
}

final class SmililarBooksSuccess extends SmililarBooksState {
  final BooksModel booksModel;

  const SmililarBooksSuccess({required this.booksModel});
}
