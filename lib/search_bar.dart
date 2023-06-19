// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class search_bar extends StatelessWidget {
  const search_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 16),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      child: TextField(
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFF1F3F5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none,
          ),
          hintText: 'Pesquisar Filmes',
          prefixIcon: Icon(Icons.search),
          prefixIconColor: Color(0xFF5E6770),
        ),
      ),
    );
  }
}
