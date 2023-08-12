part of 'featuredbooks_cubit.dart';

sealed class FeaturedbooksState extends Equatable {
  const FeaturedbooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedbooksInitial extends FeaturedbooksState {}

final class FeaturedbooksLoading extends FeaturedbooksState {}

final class FeaturedbooksFailure extends FeaturedbooksState {
  final String errorM;

  const FeaturedbooksFailure(this.errorM);
}

final class FeaturedbooksSucces extends FeaturedbooksState {
  final List<BookModel> books;

  const FeaturedbooksSucces(this.books);
}
