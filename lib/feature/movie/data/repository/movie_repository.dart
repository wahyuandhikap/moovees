import 'package:moovees/core/shared-model/review/review_response.dart';
import 'package:moovees/feature/movie/data/model/movie_detail_response.dart';
import 'package:moovees/feature/movie/data/model/movie_response.dart';

abstract class MovieRepository {
  Future<MovieResponse> getNowPlayingMovies(int page);
  Future<MovieResponse> getUpcomingMovies(int page);
  Future<MovieResponse> getPopularMovies(int page);
  Future<MovieDetailResponse> getMovieDetails(int movieId);
  Future<ReviewResponse> getMovieReviews(int page, int movieId);
}
