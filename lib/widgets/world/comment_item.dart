import 'package:flutter/material.dart';

class CommentItem extends StatelessWidget {
  const CommentItem({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 8),
      padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
      decoration: const BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1, color: Color(0xFFEEEEEE)))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.amber[100],
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: const TextSpan(
                  text: 'khoa123456 ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Trúc Sơ Nhã Kỳ',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.normal),
                    ),
                    TextSpan(
                        text: ' 7 ngày trước',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.normal)),
                  ],
                )),
                const Text(
                    'comment itemaaaaaaaaaaaâ itemaaaaaaaaaaaâitemaaaaaaaaaaaâitemaaaaaaaaaaaâitemaaaaaaaaaaaâ'),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: const [
                    Text(
                      'Tại Võ Luyện Đỉnh Phong',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.navigate_next)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
