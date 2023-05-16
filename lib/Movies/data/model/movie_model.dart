import 'package:is_it_good_tho/Movies/domain/entity/movie.dart';

/// Movie Model with .fromJson factory
class MovieModel extends Movie {
  const MovieModel(
      {required super.posterPath,
      required super.adult,
      required super.overview,
      required super.releaseDate,
      required super.genreIds,
      required super.id,
      required super.originalTitle,
      required super.originalLanguage,
      required super.title,
      required super.voteAverage});
  factory MovieModel.fromJson(Map<dynamic, dynamic> json) => MovieModel(
        posterPath: json['poster_path'],
        adult: json['adult'],
        overview: json['overview'],
        releaseDate: json['release_date'],
        genreIds: json['genre_ids'].cast<int>(),
        id: json['id'],
        originalTitle: json['original_title'],
        originalLanguage: json['original_language'],
        title: json['title'],
        voteAverage: json['vote_average'].toDouble(),
      );
}
