import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../data/repos/homerepo.dart';

part 'newestbooks_state.dart';

class NewestbooksCubit extends Cubit<NewestbooksState> {
  NewestbooksCubit(this.homperepo) : super(NewestbooksInitial());

  final HomeREpo homperepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestbooksLoading());
    var result = await homperepo.fetchFeaturedBooks();

    result.fold(
      (failure) {
        emit(Newestbooksfailure(failure.errormessage));
      },
      (books) {
        emit(Newestbookssuccess(books));
      },
    );
  }
}
