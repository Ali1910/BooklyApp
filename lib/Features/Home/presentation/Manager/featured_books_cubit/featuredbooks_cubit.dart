import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/data/repos/homerepo.dart';
import 'package:equatable/equatable.dart';

part 'featuredbooks_state.dart';

class FeaturedbooksCubit extends Cubit<FeaturedbooksState> {
  FeaturedbooksCubit(this.homperepo) : super(FeaturedbooksInitial());

  final HomeREpo homperepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedbooksLoading());
    var result = await homperepo.fetchFeaturedBooks();

    result.fold(
      (failure) {
        emit(FeaturedbooksFailure(failure.errormessage));
      },
      (books) {
        emit(FeaturedbooksSucces(books));
      },
    );
  }
}
