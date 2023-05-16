class AppConstants {
  static const String apiKey = String.fromEnvironment('APIKEY');
  static const String baseURL = 'https://api.themoviedb.org/3';
  static const String topRatedURL = '$baseURL/movie/top_rated?api_key=$apiKey';
  static const String popularURL = '$baseURL/movie/popular?api_key=$apiKey';
  static const String nowPlayingURL =
      '$baseURL/movie/now_playing?api_key=$apiKey';
  static String searchURL(String searchTerm) =>
      '$baseURL/search/movie/top_rated?api_key=$apiKey&query=$searchTerm';
}
