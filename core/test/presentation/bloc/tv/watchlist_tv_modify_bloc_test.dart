import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:core/domain/usecases/tv/remove_wachtlist.dart';
import 'package:core/domain/usecases/tv/save_wachtlist.dart';
import 'package:core/presentation/bloc/tv/watchlist_tv_modify_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../dummy_data/dummy_objects.dart';
import 'watchlist_tv_modify_bloc_test.mocks.dart';

@GenerateMocks([SaveWatchlistTv, RemoveWatchlistTv])
void main() {
  late WatchListTvModifyBloc watchListTVModifyBloc;
  late MockSaveWatchlistTv mockSaveWatchlistTV;
  late MockRemoveWatchlistTv mockRemoveWatchlistTV;

  setUp(() {
    mockSaveWatchlistTV = MockSaveWatchlistTv();
    mockRemoveWatchlistTV = MockRemoveWatchlistTv();
    watchListTVModifyBloc = WatchListTvModifyBloc(
      saveWatchlist: mockSaveWatchlistTV,
      removeWatchlist: mockRemoveWatchlistTV,
    );
  });

  const saveMessage = 'Added to Watchlist';
  const removeMessage = 'Removed from Watchlist';
  const failedMessage = 'Failed';

  group(
    'Modify Watchlist TV',
    () {
      test('initial state should be on page', () {
        expect(watchListTVModifyBloc.state, WatchListTVModifyEmpty());
      });

      blocTest<WatchListTvModifyBloc, WatchListTvModifyState>(
        'should emit [Loading, Data] when save tv is gotten successfully',
        build: () {
          when(mockSaveWatchlistTV.execute(testTvDetail))
              .thenAnswer((_) async => Right(saveMessage));
          return watchListTVModifyBloc;
        },
        act: (bloc) => bloc.add(AddTv(testTvDetail)),
        wait: const Duration(milliseconds: 500),
        verify: (_) => AddTv(testTvDetail).props,
        expect: () => [WatchListTvModifyLoading(), TvAdd(saveMessage)],
      );

      blocTest<WatchListTvModifyBloc, WatchListTvModifyState>(
        'should emit [Loading, Data] when save tv is gotten unsuccessfully',
        build: () {
          when(mockSaveWatchlistTV.execute(testTvDetail))
              .thenAnswer((_) async => Left(DatabaseFailure(failedMessage)));
          return watchListTVModifyBloc;
        },
        act: (bloc) => bloc.add(AddTv(testTvDetail)),
        wait: const Duration(milliseconds: 500),
        verify: (_) => AddTv(testTvDetail).props,
        expect: () =>
            [WatchListTvModifyLoading(), WatchListTvModifyError(failedMessage)],
      );

      blocTest<WatchListTvModifyBloc, WatchListTvModifyState>(
        'should emit [Loading, Data] when remove tv is gotten successfully',
        build: () {
          when(mockRemoveWatchlistTV.execute(testTvDetail))
              .thenAnswer((_) async => Right(removeMessage));
          return watchListTVModifyBloc;
        },
        act: (bloc) => bloc.add(RemoveTv(testTvDetail)),
        wait: const Duration(milliseconds: 500),
        verify: (_) => RemoveTv(testTvDetail).props,
        expect: () => [WatchListTvModifyLoading(), TvRemove(removeMessage)],
      );

      blocTest<WatchListTvModifyBloc, WatchListTvModifyState>(
        'should emit [Loading, Data] when remove tv is gotten unsuccessfully',
        build: () {
          when(mockRemoveWatchlistTV.execute(testTvDetail))
              .thenAnswer((_) async => Left(DatabaseFailure(failedMessage)));
          return watchListTVModifyBloc;
        },
        act: (bloc) => bloc.add(RemoveTv(testTvDetail)),
        wait: const Duration(milliseconds: 500),
        verify: (_) => RemoveTv(testTvDetail).props,
        expect: () =>
            [WatchListTvModifyLoading(), WatchListTvModifyError(failedMessage)],
      );
    },
  );
}
