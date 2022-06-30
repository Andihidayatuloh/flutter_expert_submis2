import 'package:core/domain/usecases/tv/get_tv_wachtlist_status.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'watchlist_tv_status_event.dart';
part 'watchlist_tv_status_state.dart';

class TvWatchlistStatusBloc
    extends Bloc<TvWatchlistStatusEvent, TvWatchlistStatusState> {
  final GetWatchListStatusTv getTvWatchlistStatus;

  TvWatchlistStatusBloc({
    required this.getTvWatchlistStatus,
  }) : super(TvWatchlistStatusEmpty()) {
    on<FetchTvWatchlistStatus>(_fetchTvWatchlistStatus);
  }

  void _fetchTvWatchlistStatus(FetchTvWatchlistStatus fetchTvWatchlistStatus,
      Emitter<TvWatchlistStatusState> emitter) async {
    final hasil = await getTvWatchlistStatus.execute(fetchTvWatchlistStatus.id);
    emitter(TvStatusState(hasil));
  }
}
