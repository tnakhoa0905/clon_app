import 'package:flutter/material.dart';

import '../models/manga.dart';

class ComicItem extends StatelessWidget {
  bool paddingIS;
  Manga manga;
  ComicItem({super.key, required this.paddingIS, required this.manga});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        showAlert() {
          showDialog(
            context: context,
            builder: (context) {
              Future.delayed(
                Duration(seconds: 5),
                () {
                  Navigator.of(context).pop(true);
                },
              );

              return AlertDialog(
                title: Text('Title Here'),
                content: Text('Data'),
              );
            },
          );
        }

        Navigator.of(context).pushNamed('/detail_comic', arguments: manga);
      },
      child: Container(
        padding: paddingIS == true
            ? const EdgeInsets.fromLTRB(8, 0, 8, 0)
            : EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              flex: 6,
              child: Container(
                  color: Colors.amber,
                  width: double.infinity,
                  child: Image.network(
                    manga.imageUrl,
                    fit: BoxFit.fitWidth,
                  )),
            ),
            const SizedBox(
              height: 8,
            ),
            Flexible(
              child: Text(manga.title,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis),
            ),
            const SizedBox(
              height: 8,
            ),
            const Flexible(
                child: Text(
              'Chapter 1',
              style: TextStyle(fontSize: 14, color: Colors.black),
            )),
            const SizedBox(
              height: 8,
            ),
            const Flexible(
                child: Text(
              '6 ngày trước',
              style: TextStyle(color: Colors.blue),
            ))
          ],
        ),
      ),
    );
  }
}
