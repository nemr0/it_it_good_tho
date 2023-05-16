part of 'movies_bloc.dart';

abstract class MoviesEvent extends Equatable {
  const MoviesEvent();
}

class GetTopRatedMoviesEvent extends MoviesEvent {
  @override
  List<Object?> get props => <Object?>[];
}

class GetNowPlayingMoviesEvent extends MoviesEvent {
  @override
  List<Object?> get props => <Object?>[];
}

class GetPopularMoviesEvent extends MoviesEvent {
  @override
  List<Object?> get props => <Object?>[];
}

class GetSearchedMoviesEvent extends MoviesEvent {
  const GetSearchedMoviesEvent(this.searchTerm);
  final String searchTerm;
  @override
  List<Object?> get props => <Object?>[searchTerm];
}
