import 'package:is_it_good_tho/Movies/data/data_source/base_data_source.dart';
import 'package:is_it_good_tho/Movies/domain/entity/movie.dart';
import 'package:is_it_good_tho/Movies/domain/repo/base_movie_repo.dart';

class MovieRepo implements BaseMovieRepo {
  const MovieRepo(this.dataSource);
  final BaseMovieDataSource dataSource;
  @override
  Future<List<Movie>> getNowPlayingMovies() async =>
      dataSource.getNowPlayingMovies();

  @override
  Future<List<Movie>> getPopularMovies() async => dataSource.getPopularMovies();

  @override
  Future<List<Movie>> getTopRatedMovies() async =>
      dataSource.getTopRatedMovies();

  @override
  Future<List<Movie>> searchMovies(String searchTerm) async =>
      dataSource.searchMovies(searchTerm);
}
