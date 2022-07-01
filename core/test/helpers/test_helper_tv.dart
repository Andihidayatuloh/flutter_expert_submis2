import 'package:core/data/datasources/tv_data_source.dart';
import 'package:core/data/datasources/tv_remote_data_source.dart';
import 'package:core/data/db/database_helper.dart';
import 'package:core/domain/repositories/tv_repisitory.dart';
import 'package:mockito/annotations.dart';
import 'package:http/io_client.dart';

@GenerateMocks([
  TvRepository,
  TvRemoteDataSource,
  TvDataSource,
  DatabaseHelper,
], customMocks: [
  MockSpec<IOClient>(as: #MockIOClient)
])
void main() {}
