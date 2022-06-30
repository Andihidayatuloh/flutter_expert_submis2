import 'package:core/core.dart';
import 'package:core/domain/entities/tv/tv.dart';
import 'package:core/domain/repositories/tv_repisitory.dart';
import 'package:dartz/dartz.dart';


class GetTopTv {
  final TvRepository repository;

  GetTopTv(this.repository);

  Future<Either<Failure, List<Tv>>> execute() {
    return repository.getTopTv();
  }
}