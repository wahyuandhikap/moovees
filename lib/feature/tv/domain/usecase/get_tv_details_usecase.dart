import 'package:moovees/core/usecase/usecase.dart';
import 'package:moovees/feature/tv/data/model/tv_detail_response.dart';
import 'package:moovees/feature/tv/data/repository/tv_repository.dart';

class GetTvDetailsUseCase implements UseCase<TvDetailResponse, int> {
  final TvRepository _repository;

  GetTvDetailsUseCase(this._repository);

  @override
  Future<TvDetailResponse> call(int tvId) async {
    return await _repository.getTvDetails(tvId);
  }
}
