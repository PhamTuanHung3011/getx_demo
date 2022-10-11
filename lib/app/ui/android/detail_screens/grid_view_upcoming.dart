import 'package:flutter/material.dart';

class GridViewUpComing extends StatelessWidget {
  final String? title;
  final String? poster_path;

  GridViewUpComing(this.title, this.poster_path);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: GridTile(
        child: GestureDetector(
          onTap: () {},
          child: Image.network(
            poster_path
                .toString()
                .replaceAll(RegExp(r'/'), 'https://image.tmdb.org/t/p/w500/'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
