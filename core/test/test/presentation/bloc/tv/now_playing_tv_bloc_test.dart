import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:core/domain/usecases/tv/get_now_play_tv.dart';
import 'package:core/presentation/bloc/tv/now_playing_tv_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../dummy_data/dummy_objects.dart';
import 'now_playing_tv_bloc_test.mocks.dart';

@GenerateMocks([GetNowPlayingTv])
void main() {
  late NowPlayingTvBloc nowPlayingTvBloc;
  late MockGetNowPlayingTv mockGetNowPlayingTv;

  setUp(() {
    mockGetNowPlayingTv = MockGetNowPlayingTv();
    nowPlayingTvBloc = NowPlayingTvBloc(getNowPlayingTv: mockGetNowPlayingTv);
  });

  group(
    'Now Playing TV',
    () {
      test('initial state should be on page', () {
        expect(nowPlayingTvBloc.state, NowPlayingTvEmpty());
      });

      blocTest<NowPlayingTvBloc, NowPlayingTvState>(
        'should emit [Loading, Data] when data is gotten successfully',
        build: () {
          when(mockGetNowPlayingTv.execute())
              .thenAnswer((_) async => Right(testTvList));
          return nowPlayingTvBloc;
        },
        act: (bloc) => bloc.add(FetchNowPlayingTv()),
        wait: const Duration(milliseconds: 500),
        verify: (_) => FetchNowPlayingTv().props,
        expect: () => [NowPlayingTvLoading(), NowPlayingTvData(testTvList)],
      );

      blocTest<NowPlayingTvBloc, NowPlayingTvState>(
        'should emit [Loading, Error] when data is gotten is unsuccessful',
        build: () {
          when(mockGetNowPlayingTv.execute())
              .thenAnswer((_) async => Left(ServerFailure('Failed')));
          return nowPlayingTvBloc;
        },
        act: (bloc) => bloc.add(FetchNowPlayingTv()),
        wait: const Duration(milliseconds: 500),
        verify: (_) => FetchNowPlayingTv().props,
        expect: () => [NowPlayingTvLoading(), NowPlayingTvError('Failed')],
      );
    },
  );
}
