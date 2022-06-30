// Mocks generated by Mockito 5.0.8 from annotations
// in ditonton/test/presentation/provider/movie_search_notifier_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i5;

import 'package:dartz/dartz.dart' as _i3;
import 'package:core/core.dart' as _i6;
import 'package:core/domain/entities/movie/movie.dart' as _i7;
import 'package:core/domain/entities/tv/tv.dart' as _i10;
import 'package:core/domain/repositories/movie_repository.dart' as _i2;
import 'package:search/domain/movie/search_movies.dart' as _i4;
import 'package:search/domain/tv/search_tv.dart' as _i4;
import 'package:core/domain/repositories/tv_repisitory.dart' as i8;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeMovieRepository extends _i1.Fake implements _i2.MovieRepository {}

class _FakeTvRepository extends _i1.Fake implements i8.TvRepository {}

class _FakeEither<L, R> extends _i1.Fake implements _i3.Either<L, R> {}

/// A class which mocks [SearchMovies].
///
/// See the documentation for Mockito's code generation for more information.
class MockSearchMovies extends _i1.Mock implements _i4.SearchMovies {
  MockSearchMovies() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.MovieRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeMovieRepository()) as _i2.MovieRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, List<_i7.Movie>>> execute(String? query) =>
      (super.noSuchMethod(Invocation.method(#execute, [query]),
          returnValue: Future<_i3.Either<_i6.Failure, List<_i7.Movie>>>.value(
              _FakeEither<_i6.Failure, List<_i7.Movie>>())) as _i5
          .Future<_i3.Either<_i6.Failure, List<_i7.Movie>>>);

  @override
  String toString() {
    return super.toString();
  }
}

/// A class which mocks [SearchTv].
///
/// See the documentation for Mockito's code generation for more information.
class MockSearchTV extends _i1.Mock implements _i4.SearchTv {
  MockSearchTV() {
    _i1.throwOnMissingStub(this);
  }

  @override
  i8.TvRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeTvRepository()) as i8.TvRepository);
  @override
  _i5.Future<_i3.Either<_i6.Failure, List<_i10.Tv>>> execute(String? query) =>
      (super.noSuchMethod(Invocation.method(#execute, [query]),
              returnValue: Future<_i3.Either<_i6.Failure, List<_i10.Tv>>>.value(
                  _FakeEither<_i6.Failure, List<_i10.Tv>>()))
          as _i5.Future<_i3.Either<_i6.Failure, List<_i10.Tv>>>);

  @override
  String toString() {
    return super.toString();
  }
}
