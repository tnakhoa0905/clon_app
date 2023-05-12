import 'package:clon_app/blocs/events/manga_event.dart';
import 'package:clon_app/widgets/store/store_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/manga_bloc.dart';
import '../../blocs/states/manga_state.dart';
import '../../models/manga.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StatefulWidget> createState() => _StoreScreen();
}

class _StoreScreen extends State<StoreScreen> {
  // late MangaBloc _mangaBloc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _mangaBloc = MangaBloc();
    // _mangaBloc.add(MangaLoading());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // _mangaBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          width: double.infinity,
          color: Colors.blue[800],
          child: GestureDetector(
            onTap: () => context.read<MangaBloc>().add(MangaLoading()),
            child: const Text(
              'Cửa Hàng',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
          ),
        ),
        BlocBuilder<MangaBloc, List<Manga>>(
            // bloc: _mangaBloc,
            builder: (context, state) {
          return Expanded(
            child: Container(
              margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: state.length,
                itemBuilder: (context, index) => StoreItem(),
              ),
            ),
          );
        })
      ],
    );
  }
}
