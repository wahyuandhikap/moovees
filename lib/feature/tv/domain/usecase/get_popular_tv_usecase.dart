import 'package:moovees/core/usecase/usecase.dart';
import 'package:moovees/feature/tv/data/model/tv_response.dart';
import 'package:moovees/feature/tv/data/repository/tv_repository.dart';

class GetPopularTvUseCase implements UseCase<TvResponse, int> {
  final TvRepository _repository;

  GetPopularTvUseCase(this._repository);

  @override
  Future<TvResponse> call(int page) async {
    return _repository.getPopularTv(page);
  }
}
