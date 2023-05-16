import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:is_it_good_tho/Movies/data/data_source/remote_data_source.dart';
import 'package:is_it_good_tho/Movies/domain/usecase/get_top_rated_movies.dart';

import 'Movies/data/repo/movie_repo.dart';

Future<void> main() async {
  if (kDebugMode) {
    print(
        await GetTopRatedMovies(MovieRepo(MovieRemoteDataSource())).execute());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const Placeholder(),
    );
  }
}
