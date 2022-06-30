import 'package:core/domain/entities/tv/tv_detail.dart';
import 'package:core/domain/usecases/tv/remove_wachtlist.dart';
import 'package:core/domain/usecases/tv/save_wachtlist.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'watchlist_tv_modify_event.dart';
part 'watchlist_tv_modify_state.dart';

class WatchListTvModifyBloc
    extends Bloc<WatchListTvModifyEvent, WatchListTvModifyState> {
  final SaveWatchlistTv saveWatchlist;
  final RemoveWatchlistTv removeWatchlist;

  WatchListTvModifyBloc({
    required this.saveWatchlist,
    required this.removeWatchlist,
  }) : super(WatchListTVModifyEmpty()) {
    on<AddTv>(_addWatchlist);
    on<RemoveTv>(_removeWatchlist);
  }

  void _addWatchlist(AddTv tv, Emitter<WatchListTvModifyState> emitter) async {
    emitter(WatchListTvModifyLoading());
    final result = await saveWatchlist.execute(tv.tvDetail);

    result.fold(
      (failure) => emitter(WatchListTvModifyError(failure.message)),
      (success) => emitter(TvAdd(success)),
    );
  }

  void _removeWatchlist(
      RemoveTv tv, Emitter<WatchListTvModifyState> emitter) async {
    emitter(WatchListTvModifyLoading());
    final result = await removeWatchlist.execute(tv.tvDetail);

    result.fold(
      (failure) => emitter(WatchListTvModifyError(failure.message)),
      (success) => emitter(TvRemove(success)),
    );
  }
}
