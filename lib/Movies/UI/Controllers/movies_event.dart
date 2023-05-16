part of 'movies_bloc.dart';

abstract class MoviesEvent extends Equatable {
  const MoviesEvent();
}

class GetTopRatedMoviesEvent extends MoviesEvent {
  @override
  // TODO: implement props
  List<Object?> get props => <Object?>[];
}

class GetNowPlayingMoviesEvent extends MoviesEvent {
  @override
  // TODO: implement props
  List<Object?> get props => <Object?>[];
}

class GetPopularMoviesEvent extends MoviesEvent {
  @override
  // TODO: implement props
  List<Object?> get props => <Object?>[];
}

class GetSearchedMoviesEvent extends MoviesEvent {
  @override
  // TODO: implement props
  List<Object?> get props => <Object?>[];
}
