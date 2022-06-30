

import 'package:core/domain/repositories/tv_repisitory.dart';

class GetWatchListStatusTv {
  final TvRepository repository;

  GetWatchListStatusTv(this.repository);

  Future<bool> execute(int id) async {
    return repository.isAddedToWatchlist(id);
  }
}
