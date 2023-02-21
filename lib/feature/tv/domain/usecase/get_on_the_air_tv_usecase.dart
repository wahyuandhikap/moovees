import 'package:moovees/core/usecase/usecase.dart';
import 'package:moovees/feature/tv/data/model/tv_response.dart';
import 'package:moovees/feature/tv/data/repository/tv_repository.dart';

class GetOnTheAirTvUseCase implements UseCase<TvResponse, int> {
  final TvRepository _repository;

  GetOnTheAirTvUseCase(this._repository);

  @override
  Future<TvResponse> call(int page) async {
    return await _repository.getOnTheAirTv(page);
  }
}
