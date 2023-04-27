import 'package:flutter/material.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
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
                        text: ' 7 ngày trước',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.normal)),
                  ],
                )),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      // shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          )),
                ),
                const Text(
                    'comment itemaaaaaaaaaaaâ itemaaaaaaaaaaaâitemaaaaaaaaaaaâitemaaaaaaaaaaaâitemaaaaaaaaaaaâ'),
                const SizedBox(
                  height: 16,
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
                const Divider()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
