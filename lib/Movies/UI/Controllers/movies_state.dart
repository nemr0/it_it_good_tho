part of 'movies_bloc.dart';

class MoviesState extends Equatable {
  const MoviesState({
    this.topRatedMovies = (const <Movie>[], RequestState.loading),
    this.nowPlayingMovies = (const <Movie>[], RequestState.loading),
    this.popularMovies = (const <Movie>[], RequestState.loading),
    this.searchedMovies = (const <Movie>[], RequestState.loading),
  });
  final MovieList topRatedMovies;
  final MovieList nowPlayingMovies;
  final MovieList popularMovies;
  final MovieList searchedMovies;
  @override
  List<Object> get props => <Object>[topRatedMovies];
}
