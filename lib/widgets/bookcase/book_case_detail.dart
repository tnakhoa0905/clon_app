import 'package:flutter/material.dart';

import '../comic_item.dart';

class BookCaseDetail extends StatelessWidget {
  const BookCaseDetail({super.key});

  @override
  Widget build(BuildContext context) {
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
              )),
    );
  }
}
