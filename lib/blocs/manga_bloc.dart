import 'dart:convert';

import 'package:clon_app/blocs/events/manga_event.dart';
import 'package:clon_app/blocs/states/manga_state.dart';
import 'package:clon_app/models/manga.dart';
import 'package:clon_app/screens/prolife/proflife_screen.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MangaBloc extends Bloc<MangaEvent, List<Manga>> {
  DatabaseReference ref = FirebaseDatabase.instance.ref();
  MangaBloc() : super([]) {
    on<MangaLoading>((event, emit) async {
      await fetchData(emit);
    });
    on<MangaLoaded>((event, emit) => null);
    on<MangaAdded>((event, emit) => null);
    on<MangaUpdated>((event, emit) => null);
    on<MangaDeleted>((event, emit) => null);
  }
  // ignore: use_function_type_syntax_for_parameters
  Future<List<Manga>> fetchData(Emitter emitter) async {
    List<Manga> lists = [];
    await ref.limitToFirst(10).once().then((value) {
      final values = value.snapshot.value as List<Object?>;
      values.forEach((element) {
        var result =
            Map<String, dynamic>.from(element as Map<Object?, Object?>);

        lists.add(Manga.fromJson(result));
      });
    });
    state.addAll(lists);
    emitter(state);
    print(lists.length);
    print('đọc xog rồi này');
    return state;
  }
}
