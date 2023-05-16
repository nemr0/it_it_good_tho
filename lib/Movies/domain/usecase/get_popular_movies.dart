import 'package:is_it_good_tho/Movies/domain/entity/movie.dart';
import 'package:is_it_good_tho/Movies/domain/repo/base_movie_repo.dart';

class GetPopularMovies {
  const GetPopularMovies(this.repo);
  final BaseMovieRepo repo;
  Future<List<Movie>> execute() async => repo.getPopularMovies();
}
