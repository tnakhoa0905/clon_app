import 'dart:async';

import 'package:clon_app/models/genre.dart';
import 'package:flutter/material.dart';

class SortComicBloC {
  final StreamController<List<Genre>> _listGenerController =
      StreamController<List<Genre>>();
  Stream<List<Genre>> get listGenerStream => _listGenerController.stream;

  void readGenre() {
    _listGenerController.sink.add(genres);
  }

  void addGenre(Genre genre) {
    genres.add(genre);
    _listGenerController.sink.add(genres);
  }
}

SortComicBloC sortComicBloC = SortComicBloC();
List<Genre> genres = [];
