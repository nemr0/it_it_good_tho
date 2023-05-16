import 'package:get_it/get_it.dart';
import 'package:is_it_good_tho/Movies/UI/Controllers/movies_bloc.dart';
import 'package:is_it_good_tho/Movies/data/data_source/base_data_source.dart';
import 'package:is_it_good_tho/Movies/data/data_source/remote_data_source.dart';
import 'package:is_it_good_tho/Movies/data/repo/movie_repo.dart';
import 'package:is_it_good_tho/Movies/domain/repo/base_movie_repo.dart';
import 'package:is_it_good_tho/Movies/domain/usecase/get_now_playing_movies.dart';
import 'package:is_it_good_tho/Movies/domain/usecase/get_popular_movies.dart';
import 'package:is_it_good_tho/Movies/domain/usecase/get_top_rated_movies.dart';
import 'package:is_it_good_tho/Movies/domain/usecase/search_movies.dart';

class ServiceLocator {
  final GetIt sl = GetIt.instance;
  void setup() {
    /// DataSource
    sl.registerLazySingleton<BaseMovieDataSource>(
        () => MovieRemoteDataSource());

    /// Repo
    sl.registerLazySingleton<BaseMovieRepo>(
        () => MovieRepo(sl<BaseMovieDataSource>()));

    /// Use Cases
    sl.registerLazySingleton(() => GetNowPlayingMovies(sl()));
    sl.registerLazySingleton(() => GetTopRatedMovies(sl()));
    sl.registerLazySingleton(() => GetPopularMovies(sl()));
    sl.registerLazySingleton(() => SearchMovies(sl()));

    /// state factory
    sl.registerFactory(() => MoviesBloc(sl(), sl(), sl(), sl()));
  }
}
