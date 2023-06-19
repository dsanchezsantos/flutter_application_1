// ignore_for_file: non_constant_identifier_names, unused_local_variable, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class movies_list extends StatelessWidget {
  final List movies;

  const movies_list({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    //Variables
    var width_screen = MediaQuery.of(context).size.width;
    var height_screen = MediaQuery.of(context).size.height;

    return Expanded(
      child: SizedBox(
        width: width_screen * 0.66,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.fromLTRB(14, 0, 14, 0),
              margin: EdgeInsets.all(8),
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://image.tmdb.org/t/p/w500' +
                      movies[index]['poster_path']),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        const Color.fromARGB(224, 0, 0, 0),
                        Colors.black,
                      ],
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          movies[index]['title'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
