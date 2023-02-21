import 'package:moovees/core/network/api_response_state.dart';
import 'package:moovees/core/shared-model/review/review_response.dart';
import 'package:moovees/feature/movie/data/model/movie_detail_response.dart';
import 'package:moovees/feature/movie/data/model/movie_response.dart';

class MovieState {
  final MovieResponse? nowPlayingMovies;
  final MovieResponse? upcomingMovies;
  final MovieResponse? popularMovies;
  final MovieDetailResponse? movieDetails;
  final ReviewResponse? movieReviews;
  final ApiResponseState responseState;

  MovieState(
      {this.nowPlayingMovies,
      this.upcomingMovies,
      this.popularMovies,
      this.movieDetails,
      this.movieReviews,
      this.responseState = const InitialApiResponseState()});

  MovieState copyWith(
      {MovieResponse? nowPlayingMovies,
      MovieResponse? upcomingMovies,
      MovieResponse? popularMovies,
      MovieDetailResponse? movieDetails,
      ReviewResponse? movieReviews,
      ApiResponseState? responseState}) {
    return MovieState(
        nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
        upcomingMovies: upcomingMovies ?? this.upcomingMovies,
        popularMovies: popularMovies ?? this.popularMovies,
        movieDetails: movieDetails ?? this.movieDetails,
        movieReviews: movieReviews ?? this.movieReviews,
        responseState: responseState ?? this.responseState);
  }
}
