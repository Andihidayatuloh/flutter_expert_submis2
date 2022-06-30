import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:core/domain/usecases/tv/get_popular_tv.dart';
import 'package:core/presentation/bloc/tv/popular_tv_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../dummy_data/dummy_objects.dart';
import 'popular_tv_bloc_test.mocks.dart';

@GenerateMocks([GetPopularTv])
void main() {
  late PopularTvBloc popularTvBloc;
  late MockGetPopularTv mockGetPopularTv;

  setUp(() {
    mockGetPopularTv = MockGetPopularTv();
    popularTvBloc = PopularTvBloc(getPopularTv: mockGetPopularTv);
  });

  group(
    'Popular Tv',
    () {
      test('initial state should be on page', () {
        expect(popularTvBloc.state, PopularTvEmpty());
      });

      blocTest<PopularTvBloc, PopularTvState>(
        'should emit [Loading, Data] when data is gotten successfully',
        build: () {
          when(mockGetPopularTv.execute())
              .thenAnswer((_) async => Right(testTvList));
          return popularTvBloc;
        },
        act: (bloc) => bloc.add(FetchPopularTv()),
        wait: const Duration(milliseconds: 500),
        verify: (_) => FetchPopularTv().props,
        expect: () => [PopularTvLoading(), PopularTvData(testTvList)],
      );

      blocTest<PopularTvBloc, PopularTvState>(
        'should emit [Loading, Error] when data is gotten is unsuccessful',
        build: () {
          when(mockGetPopularTv.execute())
              .thenAnswer((_) async => Left(ServerFailure('Failed')));
          return popularTvBloc;
        },
        act: (bloc) => bloc.add(FetchPopularTv()),
        wait: const Duration(milliseconds: 500),
        verify: (_) => FetchPopularTv().props,
        expect: () => [PopularTvLoading(), PopularTvError('Failed')],
      );
    },
  );
}
