import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:core/domain/usecases/tv/get_tv_detail.dart';
import 'package:core/domain/usecases/tv/get_tv_recommendations.dart';
import 'package:core/presentation/bloc/tv/tv_detail_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../dummy_data/dummy_objects.dart';
import 'tv_detail_bloc_test.mocks.dart';

@GenerateMocks([
  GetTvDetail,
  GetTvRecommendations,
])
void main() {
  late TvDetailBloc tvDetailBloc;
  late MockGetTvDetail mockGetTvDetail;
  late MockGetTVRecommendations mockGetTvRecommendations;

  setUp(() {
    mockGetTvDetail = MockGetTvDetail();
    mockGetTvRecommendations = MockGetTVRecommendations();
    tvDetailBloc = TvDetailBloc(
      getTvDetail: mockGetTvDetail,
      getTvRecommendations: mockGetTvRecommendations,
    );
  });

  final tId = 1;

  group(
    'Get TV Detail',
    () {
      test('initial state should be on page', () {
        expect(tvDetailBloc.state, TvDetailEmpty());
      });

      blocTest<TvDetailBloc, TvDetailState>(
        ' should emit [Loading, Data] when data is gotten successfully',
        build: () {
          when(mockGetTvDetail.execute(tId))
              .thenAnswer((_) async => Right(testTvDetail));
          when(mockGetTvRecommendations.execute(tId))
              .thenAnswer((_) async => Right(testTvList));
          return tvDetailBloc;
        },
        act: (bloc) => bloc.add(FetchTvDetail(tId)),
        wait: const Duration(milliseconds: 500),
        verify: (_) => FetchTvDetail(tId).props,
        expect: () =>
            [TvDetailLoading(), TvDetailData(testTvDetail, testTvList)],
      );

      blocTest<TvDetailBloc, TvDetailState>(
        ' should emit [Loading, Error] when tv detail data is gotten unsuccessful',
        build: () {
          when(mockGetTvDetail.execute(tId))
              .thenAnswer((_) async => Left(ServerFailure('Failed')));
          when(mockGetTvRecommendations.execute(tId))
              .thenAnswer((_) async => Right(testTvList));
          return tvDetailBloc;
        },
        act: (bloc) => bloc.add(FetchTvDetail(tId)),
        wait: const Duration(milliseconds: 500),
        verify: (_) => FetchTvDetail(tId).props,
        expect: () => [
          TvDetailLoading(),
          TvDetailError('Failed'),
        ],
      );

      blocTest<TvDetailBloc, TvDetailState>(
        ' should emit [Loading, Error] when Tv recommendation is gotten is unsuccessful',
        build: () {
          when(mockGetTvDetail.execute(tId))
              .thenAnswer((_) async => Right(testTvDetail));
          when(mockGetTvRecommendations.execute(tId))
              .thenAnswer((_) async => Left(ServerFailure('Failed')));
          return tvDetailBloc;
        },
        act: (bloc) => bloc.add(FetchTvDetail(tId)),
        wait: const Duration(milliseconds: 500),
        verify: (_) => FetchTvDetail(tId).props,
        expect: () => [TvDetailLoading(), TvDetailError('Failed')],
      );
    },
  );
}
