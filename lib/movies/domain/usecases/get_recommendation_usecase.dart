import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled1/core/error/failure.dart';
import 'package:untitled1/core/usecase/base_usecase.dart';
import 'package:untitled1/movies/domain/entities/recommendation.dart';
import 'package:untitled1/movies/domain/repository/base_movies_repository.dart';


class GetRecommendationUseCase
    extends BaseUseCase<List<Recommendation>, RecommendationParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetRecommendationUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Recommendation>>> call(
      RecommendationParameters parameters) async {
    return await baseMoviesRepository.getRecommendation(parameters);
  }
}

class RecommendationParameters extends Equatable {
  final int id;

  const RecommendationParameters(this.id);

  @override
  List<Object> get props => [id];
}