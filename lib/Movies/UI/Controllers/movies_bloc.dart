import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:is_it_good_tho/Core/utils/defined_types.dart';
import 'package:is_it_good_tho/Core/utils/enums.dart';

import '../../domain/entity/movie.dart';
part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc() : super(const MoviesState()) {
    on<MoviesEvent>((MoviesEvent event, Emitter<MoviesState> emit) {
      // TODO: implement event handler
    });
  }
}
