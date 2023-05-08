import 'dart:convert';

import 'package:clon_app/events/manga_event.dart';
import 'package:clon_app/models/manga.dart';
import 'package:clon_app/screens/prolife/proflife_screen.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MangaBloc extends Bloc<MangaEvent, List<Manga>> {
  DatabaseReference ref = FirebaseDatabase.instance.ref();
  MangaBloc() : super([]) {
    on<MangaLoading>((event, emit) => fetchData(emit));
    on<MangaLoaded>((event, emit) => null);
    on<MangaAdded>((event, emit) => null);
    on<MangaUpdated>((event, emit) => null);
    on<MangaDeleted>((event, emit) => null);
  }
  Future<List<Manga>> fetchData(Emitter emit) async {
    List<Manga> lists = [];
    await ref.once().then((value) {
      final values = value.snapshot.value as List<Object?>;
      final mapCreated =
          Map<String, dynamic>.from(values[0] as Map<Object?, Object?>);
      lists.add(Manga.fromJson(mapCreated));
    });

    print(lists);
    return lists;
  }
}
