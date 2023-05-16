// abstract class Movie {}
import 'package:equatable/equatable.dart';

/// Movie Entity
class Movie extends Equatable {
  const Movie(
      {required this.posterPath,
      required this.adult,
      required this.overview,
      required this.releaseDate,
      required this.genreIds,
      required this.id,
      required this.originalTitle,
      required this.originalLanguage,
      required this.title,
      required this.voteAverage});

  final String posterPath;
  final bool adult;
  final String overview;
  final String releaseDate;
  final List<int> genreIds;
  final int id;
  final String originalTitle;
  final String originalLanguage;
  final String title;
  final double voteAverage;

  @override
  List<Object?> get props => <Object?>[
        posterPath,
        adult,
        overview,
        releaseDate,
        genreIds,
        id,
        originalTitle,
        originalLanguage,
        title,
        voteAverage
      ];
}
