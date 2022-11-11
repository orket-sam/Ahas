import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@immutable
class Film {
  final String id;
  final String description;
  final String title;
  final bool isFavorite;

  const Film({
    required this.description,
    required this.id,
    required this.isFavorite,
    required this.title,
  });

  Film copyFilm(bool isFav) {
    return Film(
        description: description, id: id, isFavorite: isFav, title: title);
  }
}

class FilmModel extends StateNotifier<Film> {
  FilmModel(super.state);
}

List<Film> films = [
  const Film(
      description: 'The best movie',
      id: 'f1',
      isFavorite: false,
      title: 'Breaking Bad'),
  const Film(
      description: 'The best movie',
      id: 'f2',
      isFavorite: false,
      title: 'Better call saul'),
  const Film(
      description: 'The best movie',
      id: 'f3',
      isFavorite: false,
      title: 'Bumble bee'),
  const Film(
      description: 'The best movie',
      id: 'f4',
      isFavorite: false,
      title: 'Doctor who'),
  const Film(
      description: 'The feds watching',
      id: 'f5',
      isFavorite: false,
      title: 'bad boys for life'),
  const Film(
      description: 'The apocalypse',
      id: 'f6',
      isFavorite: false,
      title: 'The walking dead'),
];
