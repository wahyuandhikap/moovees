import 'package:moovees/core/usecase/usecase.dart';
import 'package:moovees/feature/movie/data/model/movie_detail_response.dart';
import 'package:moovees/feature/movie/data/repository/movie_repository.dart';

class GetMovieDetailsUseCase implements UseCase<MovieDetailResponse, int> {
  final MovieRepository _repository;

  GetMovieDetailsUseCase(this._repository);

  @override
  Future<MovieDetailResponse> call(int movieId) async {
    return await _repository.getMovieDetails(movieId);
  }
}
