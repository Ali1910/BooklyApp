part of 'newestbooks_cubit.dart';

sealed class NewestbooksState extends Equatable {
  const NewestbooksState();

  @override
  List<Object> get props => [];
}

final class NewestbooksInitial extends NewestbooksState {}

final class NewestbooksLoading extends NewestbooksState {}

final class Newestbooksfailure extends NewestbooksState {
  final String errormes;

  const Newestbooksfailure(this.errormes);
}

final class Newestbookssuccess extends NewestbooksState {
  final List<BookModel> books;

  const Newestbookssuccess(this.books);
}
