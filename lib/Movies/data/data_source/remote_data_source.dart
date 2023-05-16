import 'package:dio/dio.dart';
import 'package:is_it_good_tho/Core/exceptions/server_exception.dart';
import 'package:is_it_good_tho/Core/model/error_message_model.dart';
import 'package:is_it_good_tho/Core/utils/app_constants.dart';
import 'package:is_it_good_tho/Movies/data/data_source/base_data_source.dart';
import 'package:is_it_good_tho/Movies/data/model/movie_model.dart';
import 'package:is_it_good_tho/Movies/domain/entity/movie.dart';

class RemoteDataSource extends BaseDataSource {
  final Dio _dio = Dio();
  @override
  Future<List<Movie>> getNowPlayingMovies() async {
    final Response<Map<String, dynamic>> result =
        await _dio.get(AppConstants.nowPlayingURL);
    if (result.statusCode == 200) {
      return List<Map<String, dynamic>>.from(result.data?["results"])
          .map((Map<String, dynamic> e) => MovieModel.fromJson(e))
          .toList();
    } else {
      throw ServerException(ErrorMessageModel.fromJson(result.data!));
    }
  }

  @override
  Future<List<Movie>> getPopularMovies() async {
    final Response<Map<String, dynamic>> result =
        await _dio.get(AppConstants.popularURL);
    if (result.statusCode == 200) {
      return List<Map<String, dynamic>>.from(result.data?["results"])
          .map((Map<String, dynamic> e) => MovieModel.fromJson(e))
          .toList();
    } else {
      throw ServerException(ErrorMessageModel.fromJson(result.data!));
    }
  }

  @override
  Future<List<Movie>> getTopRatedMovies() async {
    final Response<Map<String, dynamic>> result =
        await _dio.get(AppConstants.topRatedURL);
    if (result.statusCode == 200) {
      return List<Map<String, dynamic>>.from(result.data?["results"])
          .map((Map<String, dynamic> e) => MovieModel.fromJson(e))
          .toList();
    } else {
      throw ServerException(ErrorMessageModel.fromJson(result.data!));
    }
  }

  @override
  Future<List<Movie>> searchMovies(String searchTerm) async {
    final Response<Map<String, dynamic>> result =
        await _dio.get(AppConstants.searchURL(searchTerm));
    if (result.statusCode == 200) {
      return List<Map<String, dynamic>>.from(result.data?["results"])
          .map((Map<String, dynamic> e) => MovieModel.fromJson(e))
          .toList();
    } else {
      throw ServerException(ErrorMessageModel.fromJson(result.data!));
    }
  }
}
