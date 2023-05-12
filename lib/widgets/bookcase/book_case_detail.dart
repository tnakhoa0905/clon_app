import 'package:clon_app/blocs/manga_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../comic_item.dart';

class BookCaseDetail extends StatelessWidget {
  const BookCaseDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.read<MangaBloc>().state;
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
      child: GridView.builder(
          itemCount: 15,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.41,
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) => ComicItem(
                paddingIS: true,
                manga: state[index],
              )),
    );
  }
}
