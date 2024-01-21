import 'package:bloc/bloc.dart';
import 'package:bookly_app/feature/home/data/model/book/book.model.dart';
import 'package:equatable/equatable.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit() : super(FeaturedBookInitial());
}
