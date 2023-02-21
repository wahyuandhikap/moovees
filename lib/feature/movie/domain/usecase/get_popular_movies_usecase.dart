import 'package:moovees/core/usecase/usecase.dart';
import 'package:moovees/feature/movie/data/model/movie_response.dart';
import 'package:moovees/feature/movie/data/repository/movie_repository.dart';

class GetPopularMoviesUseCase implements UseCase<MovieResponse, int> {
  final MovieRepository _repository;

  GetPopularMoviesUseCase(this._repository);

  @override
  Future<MovieResponse> call(int page) async {
    return await _repository.getPopularMovies(page);
  }
}
