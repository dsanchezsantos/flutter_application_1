// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, non_constant_identifier_names, avoid_types_as_parameter_names, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:flutter_application_1/category_btn.dart';
import 'package:flutter_application_1/movies_list.dart';
import 'package:flutter_application_1/search_bar.dart';
import 'package:tmdb_api/tmdb_api.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final apikey = 'fd8307101b60f98155f2d895aa517971';
  final accesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZDgzMDcxMDFiNjBmOTgxNTVmMmQ4OTVhYTUxNzk3MSIsInN1YiI6IjY0OGE1NTQ1YTgwMjM2MDEwMDE4ZTE1YiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.PUt-wxsj6B_5zY8Aekulm9i5uNnxVnWN1agMt1Zyry8';

  List movies = [];

  @override
  void initState() {
    loadMovies();
    super.initState();
  }

  loadMovies() async {
    final tmdbWithCustomLogs = TMDB(ApiKeys(apikey, accesstoken),
        logConfig: ConfigLogger(
          showLogs: true,
          showErrorLogs: true,
        ),
        defaultLanguage: 'pt');

    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending(
      mediaType: MediaType.movie,
      timeWindow: TimeWindow.day,
    );

    setState(() {
      movies = trendingresult['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    //Variables
    var width_screen = MediaQuery.of(context).size.width;
    var height_screen = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Container(
      child: Column(
        children: [
          //TITULO PAGINA
          Container(
            margin: EdgeInsets.fromLTRB(20, 16, 20, 16),
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Text(
                  'Filmes',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),

          //BARRA DE PESQUISA
          search_bar(),

          //BOTOES DE CATGEGORIA
          category_btn(),

          movies_list(
            movies: movies,
          ),
        ],
      ),
    ));
  }
}
