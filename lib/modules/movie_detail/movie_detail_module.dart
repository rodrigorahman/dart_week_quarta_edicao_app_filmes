import 'package:app_filmes/application/modules/module.dart';
import 'package:app_filmes/modules/movie_detail/movie_detail_bindings.dart';
import 'package:app_filmes/modules/movie_detail/movie_detail_page.dart';
import 'package:app_filmes/modules/movies/movies_bindings.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class MovieDetailModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/movie/detail',
      page: () => MovieDetailPage(),
      binding: MovieDetailBindings()
    )
  ];
}
