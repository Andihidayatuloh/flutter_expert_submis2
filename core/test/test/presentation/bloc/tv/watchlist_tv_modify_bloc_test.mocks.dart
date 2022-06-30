// Mocks generated by Mockito 5.0.8 from annotations
// in ditonton/test/presentation/provider/watchlist_tv_notifier_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:core/core.dart' as _i6;
import 'package:dartz/dartz.dart' as _i5;
import 'package:core/domain/entities/tv/tv_detail.dart' as _i8;
import 'package:core/domain/repositories/tv_repisitory.dart' as _i2;
import 'package:core/domain/usecases/tv/save_wachtlist.dart' as _i3;
import 'package:core/domain/usecases/tv/remove_wachtlist.dart' as _i7;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeTVRepository extends _i1.Fake implements _i2.TvRepository {}

class _FakeEither<L, R> extends _i1.Fake implements _i5.Either<L, R> {}

/// A class which mocks [SaveWatchlistTV].
///
/// See the documentation for Mockito's code generation for more information.
class MockSaveWatchlistTv extends _i1.Mock implements _i3.SaveWatchlistTv {
  MockSaveWatchlistTv() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TvRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeTVRepository()) as _i2.TvRepository);

  @override
  _i4.Future<_i5.Either<_i6.Failure, String>> execute(_i8.TvDetail? tv) =>
      (super.noSuchMethod(Invocation.method(#execute, [tv]),
              returnValue: Future<_i5.Either<_i6.Failure, String>>.value(
                  _FakeEither<_i6.Failure, String>()))
          as _i4.Future<_i5.Either<_i6.Failure, String>>);

  @override
  String toString() => super.toString();
}

/// A class which mocks [RemoveWatchlistTv].
///
/// See the documentation for Mockito's code generation for more information.
class MockRemoveWatchlistTv extends _i1.Mock implements _i7.RemoveWatchlistTv {
  MockRemoveWatchlistTv() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.TvRepository get repository =>
      (super.noSuchMethod(Invocation.getter(#repository),
          returnValue: _FakeTVRepository()) as _i2.TvRepository);

  @override
  _i4.Future<_i5.Either<_i6.Failure, String>> execute(_i8.TvDetail? tv) =>
      (super.noSuchMethod(Invocation.method(#execute, [tv]),
              returnValue: Future<_i5.Either<_i6.Failure, String>>.value(
                  _FakeEither<_i6.Failure, String>()))
          as _i4.Future<_i5.Either<_i6.Failure, String>>);

  @override
  String toString() => super.toString();
}
