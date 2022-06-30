// Mocks generated by Mockito 5.0.8 from annotations
// in proyek_awal/test/helpers/test_helper.dart.
// Do not manually edit this file.

import 'dart:async' as _i7;
import 'dart:convert' as _i18;
import 'dart:typed_data' as _i19;

import 'package:dartz/dartz.dart' as _i2;
import 'package:core/utils/failure.dart' as _i8;
import 'package:core/data/db/databasetv.dart' as _i15;
import 'package:core/data/datasources/tv_data_source.dart'
    as _i13;
import 'package:core/data/datasources/tv_remote_data_source.dart'
    as _i11;
import 'package:core/data/models/tv/tv_detail.dart' as _i3;
import 'package:core/data/models/tv/tv_model.dart' as _i12;
import 'package:core/data/models/tv/tv_table.dart' as _i14;
import 'package:core/domain/entities/tv/tv.dart' as _i9;
import 'package:core/domain/entities/tv/tv_detail.dart' as _i10;
import 'package:core/domain/repositories/tv_repisitory.dart' as _i6;
import 'package:http/src/base_request.dart' as _i20;
import 'package:http/src/client.dart' as _i17;
import 'package:http/src/response.dart' as _i4;
import 'package:http/src/streamed_response.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:sqflite_common/sqlite_api.dart' as _i16;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: comment_references
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeEither<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

class _FakeMovieDetailResponse extends _i1.Fake
    implements _i3.TvDetailResponse {}

class _FakeResponse extends _i1.Fake implements _i4.Response {}

class _FakeStreamedResponse extends _i1.Fake implements _i5.StreamedResponse {}

/// A class which mocks [TvRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvRepository extends _i1.Mock implements _i6.TvRepository {
  MockTvRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Tv>>> getNowPlayingTv() =>
      (super.noSuchMethod(Invocation.method(#getNowPlayingTv, []),
              returnValue: Future<_i2.Either<_i8.Failure, List<_i9.Tv>>>.value(
                  _FakeEither<_i8.Failure, List<_i9.Tv>>()))
          as _i7.Future<_i2.Either<_i8.Failure, List<_i9.Tv>>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Tv>>> getPopularTv() =>
      (super.noSuchMethod(Invocation.method(#getPopularTv, []),
              returnValue: Future<_i2.Either<_i8.Failure, List<_i9.Tv>>>.value(
                  _FakeEither<_i8.Failure, List<_i9.Tv>>()))
          as _i7.Future<_i2.Either<_i8.Failure, List<_i9.Tv>>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Tv>>> getTopTv() =>
      (super.noSuchMethod(Invocation.method(#getTopTv, []),
              returnValue: Future<_i2.Either<_i8.Failure, List<_i9.Tv>>>.value(
                  _FakeEither<_i8.Failure, List<_i9.Tv>>()))
          as _i7.Future<_i2.Either<_i8.Failure, List<_i9.Tv>>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, _i10.TvDetail>> getTvDetail(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvDetail, [id]),
              returnValue: Future<_i2.Either<_i8.Failure, _i10.TvDetail>>.value(
                  _FakeEither<_i8.Failure, _i10.TvDetail>()))
          as _i7.Future<_i2.Either<_i8.Failure, _i10.TvDetail>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Tv>>> getTvRecommendation(
          int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvRecommendation, [id]),
              returnValue: Future<_i2.Either<_i8.Failure, List<_i9.Tv>>>.value(
                  _FakeEither<_i8.Failure, List<_i9.Tv>>()))
          as _i7.Future<_i2.Either<_i8.Failure, List<_i9.Tv>>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Tv>>> searchTv(String? query) =>
      (super.noSuchMethod(Invocation.method(#searchTv, [query]),
              returnValue: Future<_i2.Either<_i8.Failure, List<_i9.Tv>>>.value(
                  _FakeEither<_i8.Failure, List<_i9.Tv>>()))
          as _i7.Future<_i2.Either<_i8.Failure, List<_i9.Tv>>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, String>> saveWatchlist(
          _i10.TvDetail? tv) =>
      (super.noSuchMethod(Invocation.method(#saveWatchlist, [tv]),
              returnValue: Future<_i2.Either<_i8.Failure, String>>.value(
                  _FakeEither<_i8.Failure, String>()))
          as _i7.Future<_i2.Either<_i8.Failure, String>>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, String>> removeWatchlist(
          _i10.TvDetail? tv) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlist, [tv]),
              returnValue: Future<_i2.Either<_i8.Failure, String>>.value(
                  _FakeEither<_i8.Failure, String>()))
          as _i7.Future<_i2.Either<_i8.Failure, String>>);
  @override
  _i7.Future<bool> isAddedToWatchlist(int? id) =>
      (super.noSuchMethod(Invocation.method(#isAddedToWatchlist, [id]),
          returnValue: Future<bool>.value(false)) as _i7.Future<bool>);
  @override
  _i7.Future<_i2.Either<_i8.Failure, List<_i9.Tv>>> getWatchlistTv() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistTv, []),
              returnValue: Future<_i2.Either<_i8.Failure, List<_i9.Tv>>>.value(
                  _FakeEither<_i8.Failure, List<_i9.Tv>>()))
          as _i7.Future<_i2.Either<_i8.Failure, List<_i9.Tv>>>);
}

/// A class which mocks [TvRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvRemoteDataSource extends _i1.Mock
    implements _i11.TvRemoteDataSource {
  MockTvRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<List<_i12.Result>> getNowPlayingTv() =>
      (super.noSuchMethod(Invocation.method(#getNowPlayingTv, []),
              returnValue: Future<List<_i12.Result>>.value(<_i12.Result>[]))
          as _i7.Future<List<_i12.Result>>);
  @override
  _i7.Future<List<_i12.Result>> getPopularTv() =>
      (super.noSuchMethod(Invocation.method(#getPopularTv, []),
              returnValue: Future<List<_i12.Result>>.value(<_i12.Result>[]))
          as _i7.Future<List<_i12.Result>>);
  @override
  _i7.Future<List<_i12.Result>> getTopRatedTv() =>
      (super.noSuchMethod(Invocation.method(#getTopRatedTv, []),
              returnValue: Future<List<_i12.Result>>.value(<_i12.Result>[]))
          as _i7.Future<List<_i12.Result>>);
  @override
  _i7.Future<_i3.TvDetailResponse> getTvDetail(int? id) => (super.noSuchMethod(
          Invocation.method(#getTvDetail, [id]),
          returnValue:
              Future<_i3.TvDetailResponse>.value(_FakeMovieDetailResponse()))
      as _i7.Future<_i3.TvDetailResponse>);
  @override
  _i7.Future<List<_i12.Result>> getTvRecommendation(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvRecommendation, [id]),
              returnValue: Future<List<_i12.Result>>.value(<_i12.Result>[]))
          as _i7.Future<List<_i12.Result>>);
  @override
  _i7.Future<List<_i12.Result>> searchTv(String? query) =>
      (super.noSuchMethod(Invocation.method(#searchTv, [query]),
              returnValue: Future<List<_i12.Result>>.value(<_i12.Result>[]))
          as _i7.Future<List<_i12.Result>>);
}

/// A class which mocks [TvLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockTvLocalDataSource extends _i1.Mock implements _i13.TvDataSource {
  MockTvLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<String> insertWatchlist(_i14.TvTable? tv) =>
      (super.noSuchMethod(Invocation.method(#insertWatchlist, [tv]),
          returnValue: Future<String>.value('')) as _i7.Future<String>);
  @override
  _i7.Future<String> removeWatchlist(_i14.TvTable? tv) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlist, [tv]),
          returnValue: Future<String>.value('')) as _i7.Future<String>);
  @override
  _i7.Future<_i14.TvTable?> getTvById(int? id) => (super.noSuchMethod(
      Invocation.method(#getTvById, [id]),
      returnValue: Future<_i14.TvTable?>.value()) as _i7.Future<_i14.TvTable?>);
  @override
  _i7.Future<List<_i14.TvTable>> getWatchlistTv() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistTv, []),
              returnValue: Future<List<_i14.TvTable>>.value(<_i14.TvTable>[]))
          as _i7.Future<List<_i14.TvTable>>);
}

/// A class which mocks [DatabaseHelperTv].
///
/// See the documentation for Mockito's code generation for more information.
class MockDatabaseHelper extends _i1.Mock implements _i15.DatabaseTv {
  MockDatabaseHelper() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i16.Database?> get database =>
      (super.noSuchMethod(Invocation.getter(#database),
              returnValue: Future<_i16.Database?>.value())
          as _i7.Future<_i16.Database?>);
  @override
  _i7.Future<int> insertWatchlist(_i14.TvTable? tv) =>
      (super.noSuchMethod(Invocation.method(#insertWatchlist, [tv]),
          returnValue: Future<int>.value(0)) as _i7.Future<int>);
  @override
  _i7.Future<int> removeWatchlist(_i14.TvTable? tv) =>
      (super.noSuchMethod(Invocation.method(#removeWatchlist, [tv]),
          returnValue: Future<int>.value(0)) as _i7.Future<int>);
  @override
  _i7.Future<Map<String, dynamic>?> getTvById(int? id) =>
      (super.noSuchMethod(Invocation.method(#getTvById, [id]),
              returnValue: Future<Map<String, dynamic>?>.value())
          as _i7.Future<Map<String, dynamic>?>);
  @override
  _i7.Future<List<Map<String, dynamic>>> getWatchlistTv() =>
      (super.noSuchMethod(Invocation.method(#getWatchlistTv, []),
              returnValue: Future<List<Map<String, dynamic>>>.value(
                  <Map<String, dynamic>>[]))
          as _i7.Future<List<Map<String, dynamic>>>);
}

/// A class which mocks [Client].
///
/// See the documentation for Mockito's code generation for more information.
class MockHttpClient extends _i1.Mock implements _i17.Client {
  MockHttpClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<_i4.Response> head(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#head, [url], {#headers: headers}),
              returnValue: Future<_i4.Response>.value(_FakeResponse()))
          as _i7.Future<_i4.Response>);
  @override
  _i7.Future<_i4.Response> get(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#get, [url], {#headers: headers}),
              returnValue: Future<_i4.Response>.value(_FakeResponse()))
          as _i7.Future<_i4.Response>);
  @override
  _i7.Future<_i4.Response> post(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i18.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#post, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i4.Response>.value(_FakeResponse()))
          as _i7.Future<_i4.Response>);
  @override
  _i7.Future<_i4.Response> put(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i18.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#put, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i4.Response>.value(_FakeResponse()))
          as _i7.Future<_i4.Response>);
  @override
  _i7.Future<_i4.Response> patch(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i18.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#patch, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i4.Response>.value(_FakeResponse()))
          as _i7.Future<_i4.Response>);
  @override
  _i7.Future<_i4.Response> delete(Uri? url,
          {Map<String, String>? headers,
          Object? body,
          _i18.Encoding? encoding}) =>
      (super.noSuchMethod(
              Invocation.method(#delete, [url],
                  {#headers: headers, #body: body, #encoding: encoding}),
              returnValue: Future<_i4.Response>.value(_FakeResponse()))
          as _i7.Future<_i4.Response>);
  @override
  _i7.Future<String> read(Uri? url, {Map<String, String>? headers}) =>
      (super.noSuchMethod(Invocation.method(#read, [url], {#headers: headers}),
          returnValue: Future<String>.value('')) as _i7.Future<String>);
  @override
  _i7.Future<_i19.Uint8List> readBytes(Uri? url,
          {Map<String, String>? headers}) =>
      (super.noSuchMethod(
              Invocation.method(#readBytes, [url], {#headers: headers}),
              returnValue: Future<_i19.Uint8List>.value(_i19.Uint8List(0)))
          as _i7.Future<_i19.Uint8List>);
  @override
  _i7.Future<_i5.StreamedResponse> send(_i20.BaseRequest? request) =>
      (super.noSuchMethod(Invocation.method(#send, [request]),
              returnValue:
                  Future<_i5.StreamedResponse>.value(_FakeStreamedResponse()))
          as _i7.Future<_i5.StreamedResponse>);
  @override
  void close() => super.noSuchMethod(Invocation.method(#close, []),
      returnValueForMissingStub: null);
}
