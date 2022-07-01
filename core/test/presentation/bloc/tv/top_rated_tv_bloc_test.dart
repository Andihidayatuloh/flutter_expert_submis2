import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:core/domain/usecases/tv/get_top_rated_tv.dart';
import 'package:core/presentation/bloc/tv/top_rated_tv_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../dummy_data/dummy_objects.dart';
import 'top_rated_tv_bloc_test.mocks.dart';

@GenerateMocks([GetTopTv])
void main() {
  late TopTvBloc topRatedTVBloc;
  late MockGetTopTv mockTopTv;

  setUp(() {
    mockTopTv = MockGetTopTv();
    topRatedTVBloc = TopTvBloc(getTopTv: mockTopTv);
  });

  group(
    'Top Rated TV',
    () {
      test('initial state should be on page', () {
        expect(topRatedTVBloc.state, TopTvEmpty());
      });

      blocTest<TopTvBloc, TopTvState>(
        'should emit [Loading, Data] when data is gotten successfully',
        build: () {
          when(mockTopTv.execute())
              .thenAnswer((_) async => Right(testTvList));
          return topRatedTVBloc;
        },
        act: (bloc) => bloc.add(FetchTopTv()),
        wait: const Duration(milliseconds: 500),
        verify: (_) => FetchTopTv().props,
        expect: () => [TopTvLoading(), TopTvData(testTvList)],
      );

      blocTest<TopTvBloc, TopTvState>(
        'should emit [Loading, Error] when data is gotten is unsuccessful',
        build: () {
          when(mockTopTv.execute())
              .thenAnswer((_) async => Left(ServerFailure('Failed')));
          return topRatedTVBloc;
        },
        act: (bloc) => bloc.add(FetchTopTv()),
        wait: const Duration(milliseconds: 500),
        verify: (_) => FetchTopTv().props,
        expect: () => [TopTvLoading(), TopTvError('Failed')],
      );
    },
  );
}
