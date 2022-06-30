import 'package:core/domain/usecases/tv/get_tv_wachtlist_status.dart';
import 'package:core/presentation/bloc/tv/watchlist_tv_status_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'watchlist_tv_status_bloc_test.mocks.dart';

@GenerateMocks([GetWatchListStatusTv])
void main() {
  late TvWatchlistStatusBloc tvWatchlistStatusBloc;
  late MockGetWatchListStatus mockGetWatchListStatus;

  setUp(() {
    mockGetWatchListStatus = MockGetWatchListStatus();
    tvWatchlistStatusBloc =
        TvWatchlistStatusBloc(getTvWatchlistStatus: mockGetWatchListStatus);
  });

  final tId = 1;

  group(
    'Watchlist TV Status',
    () {
      test('initial state should be on page', () {
        expect(tvWatchlistStatusBloc.state, TvWatchlistStatusEmpty());
      });

      blocTest<TvWatchlistStatusBloc, TvWatchlistStatusState>(
        'should emit [Loading, Data] when data is gotten successfully',
        build: () {
          when(mockGetWatchListStatus.execute(tId))
              .thenAnswer((_) async => true);
          return tvWatchlistStatusBloc;
        },
        act: (bloc) => bloc.add(FetchTvWatchlistStatus(tId)),
        wait: const Duration(milliseconds: 500),
        verify: (_) => FetchTvWatchlistStatus(tId).props,
        expect: () => [TvStatusState(true)],
      );
    },
  );
}
