// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class category_btn extends StatelessWidget {
  const category_btn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFF1F3F5),
                shape: StadiumBorder(),
              ),
              child: Text(
                'Ação',
                style: TextStyle(color: Color(0xFF00384C)),
              )),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFF1F3F5),
                shape: StadiumBorder(),
              ),
              child: Text(
                'Aventura',
                style: TextStyle(color: Color(0xFF00384C)),
              )),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFF1F3F5),
                shape: StadiumBorder(),
              ),
              child: Text(
                'Fantasia',
                style: TextStyle(color: Color(0xFF00384C)),
              )),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFF1F3F5),
                shape: StadiumBorder(),
              ),
              child: Text(
                'Comédia',
                style: TextStyle(color: Color(0xFF00384C)),
              ))
        ],
      ),
    );
  }
}
