import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'featuredbooks_state.dart';

class FeaturedbooksCubit extends Cubit<FeaturedbooksState> {
  FeaturedbooksCubit() : super(FeaturedbooksInitial());
}
