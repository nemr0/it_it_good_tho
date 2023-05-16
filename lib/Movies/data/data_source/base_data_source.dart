import '../../domain/entity/movie.dart';

abstract class BaseDataSource {
  Future<List<Movie>> getTopRatedMovies();

  Future<List<Movie>> getPopularMovies();

  Future<List<Movie>> getNowPlayingMovies();

  Future<List<Movie>> searchMovies(String searchTerm);
}
