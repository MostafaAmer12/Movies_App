import 'package:dartz/dartz.dart';
import 'package:untitled1/core/error/failure.dart';
import 'package:untitled1/core/usecase/base_usecase.dart';
import 'package:untitled1/movies/domain/entities/movie.dart';
import 'package:untitled1/movies/domain/repository/base_movies_repository.dart';


class GetTopRatedMoviesUseCase extends BaseUseCase<List<Movie>, NoParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetTopRatedMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters parameters) async {
    return await baseMoviesRepository.getTopRatedMovies();
  }
}
