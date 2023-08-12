import 'package:bookly/Core/errors/failure.dart';
import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeREpo {
  Future<Either<Failure, List<BookModel>>> fetchBestBooks();
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
}
