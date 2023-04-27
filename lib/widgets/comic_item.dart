import 'package:flutter/material.dart';

class ComicItem extends StatelessWidget {
  bool paddingIS;

  ComicItem({super.key, required this.paddingIS});
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

        Navigator.of(context).pushNamed(
          '/detail_comic',
        );
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
                child: const Image(
                  fit: BoxFit.fitWidth,
                  image: AssetImage('assets/images/image3.png'),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Flexible(
              child: Text('Ta là khoa đẹp trai hih',
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
