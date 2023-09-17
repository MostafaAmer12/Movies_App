import 'package:dartz/dartz.dart';
import 'package:untitled1/core/error/failure.dart';
import 'package:untitled1/movies/domain/entities/movie.dart';
import 'package:untitled1/movies/domain/entities/movie_detail.dart';
import 'package:untitled1/movies/domain/entities/recommendation.dart';
import 'package:untitled1/movies/domain/usecases/get_movie_details_usecase.dart';
import 'package:untitled1/movies/domain/usecases/get_recommendation_usecase.dart';


abstract class BaseMoviesRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();

  Future<Either<Failure, List<Movie>>> getPopularMovies();

  Future<Either<Failure, List<Movie>>> getTopRatedMovies();

  Future<Either<Failure, MovieDetail>> getMovieDetails(
      MovieDetailsParameters parameters);

  Future<Either<Failure, List<Recommendation>>> getRecommendation(
      RecommendationParameters parameters);
}
