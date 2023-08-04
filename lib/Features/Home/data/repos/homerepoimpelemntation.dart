import 'package:bookly/Core/Utitls/ApiService.dart';
import 'package:bookly/Core/errors/failure.dart';
import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/data/repos/homerepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dartz/dartz_unsafe.dart';
import 'package:dio/dio.dart';

class HomeRepoImpelemetation implements HomeREpo {
  final ApiService apiService;

  HomeRepoImpelemetation(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestNewestBooks() async {
    try {
      var data = await apiService.get(
          endpoint: 'Filtering=free-ebooks&q=subject:programming');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endpoint:
              'Filtering=free-ebooks&Sorting=newest &q=subject:programming');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }

    throw UnimplementedError();
  }
}
