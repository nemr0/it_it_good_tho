import 'package:is_it_good_tho/Movies/domain/entity/movie.dart';

/// Repository Contract
abstract class BaseMovieRepo {
  Future<List<Movie>> getTopRatedMovies();
  Future<List<Movie>> getPopularMovies();
  Future<List<Movie>> getNowPlayingMovies();
  Future<List<Movie>> searchMovies(String searchTerm);
}
