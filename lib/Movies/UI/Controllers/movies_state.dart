part of 'movies_bloc.dart';

class MoviesState extends Equatable {
  const MoviesState({
    this.topRatedMovies = (const <Movie>[], RequestState.loading, null),
    this.nowPlayingMovies = (const <Movie>[], RequestState.loading, null),
    this.popularMovies = (const <Movie>[], RequestState.loading, null),
    this.searchedMovies = (const <Movie>[], RequestState.loading, null),
  });

  final MovieListData topRatedMovies;
  final MovieListData nowPlayingMovies;
  final MovieListData popularMovies;
  final MovieListData searchedMovies;

  MoviesState copyWith({
    MovieListData? topRatedMovies,
    MovieListData? nowPlayingMovies,
    MovieListData? popularMovies,
    MovieListData? searchedMovies,
  }) =>
      MoviesState(
        topRatedMovies: topRatedMovies ?? this.topRatedMovies,
        nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
        popularMovies: popularMovies ?? this.popularMovies,
        searchedMovies: searchedMovies ?? this.searchedMovies,
      );

  @override
  List<Object> get props => <Object>[topRatedMovies];
}
