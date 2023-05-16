import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:is_it_good_tho/Core/exceptions/server_exception.dart';
import 'package:is_it_good_tho/Core/utils/defined_types.dart';
import 'package:is_it_good_tho/Core/utils/enums.dart';
import 'package:is_it_good_tho/Movies/domain/usecase/get_now_playing_movies.dart';
import 'package:is_it_good_tho/Movies/domain/usecase/get_popular_movies.dart';
import 'package:is_it_good_tho/Movies/domain/usecase/get_top_rated_movies.dart';
import 'package:is_it_good_tho/Movies/domain/usecase/search_movies.dart';

import '../../domain/entity/movie.dart';
part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc(this.getNowPlayingMovies, this.getTopRatedMovies,
      this.getPopularMovies, this.searchMovies)
      : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>(_getNowPlayingMovies);
    on<GetTopRatedMoviesEvent>(_getTopRatedMovies);
    on<GetPopularMoviesEvent>(_getPopularMovies);
    on<GetSearchedMoviesEvent>(_searchMovies);
  }
  final GetNowPlayingMovies getNowPlayingMovies;
  final GetTopRatedMovies getTopRatedMovies;
  final GetPopularMovies getPopularMovies;
  final SearchMovies searchMovies;

  Future<void> _getNowPlayingMovies(
      GetNowPlayingMoviesEvent event, Emitter<MoviesState> emit) async {
    try {
      final List<Movie> result = await getNowPlayingMovies.execute();
      emit(state
          .copyWith(nowPlayingMovies: (result, RequestState.loaded, null)));
    } on ServerException catch (exception) {
      emit(state.copyWith(
          nowPlayingMovies: (<Movie>[], RequestState.loaded, exception)));
    }
  }

  Future<void> _getTopRatedMovies(
      GetTopRatedMoviesEvent event, Emitter<MoviesState> emit) async {
    try {
      final List<Movie> result = await getTopRatedMovies.execute();
      emit(state
          .copyWith(nowPlayingMovies: (result, RequestState.loaded, null)));
    } on ServerException catch (exception) {
      emit(state.copyWith(
          nowPlayingMovies: (<Movie>[], RequestState.loaded, exception)));
    }
  }

  Future<void> _getPopularMovies(
      GetPopularMoviesEvent event, Emitter<MoviesState> emit) async {
    try {
      final List<Movie> result = await getPopularMovies.execute();
      emit(state
          .copyWith(nowPlayingMovies: (result, RequestState.loaded, null)));
    } on ServerException catch (exception) {
      emit(state.copyWith(
          nowPlayingMovies: (<Movie>[], RequestState.loaded, exception)));
    }
  }

  Future<void> _searchMovies(
      GetSearchedMoviesEvent event, Emitter<MoviesState> emit) async {
    try {
      final List<Movie> result = await searchMovies.execute(event.searchTerm);
      emit(state
          .copyWith(nowPlayingMovies: (result, RequestState.loaded, null)));
    } on ServerException catch (exception) {
      emit(state.copyWith(
          nowPlayingMovies: (<Movie>[], RequestState.loaded, exception)));
    }
  }
}
