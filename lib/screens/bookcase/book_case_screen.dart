import 'package:clon_app/widgets/bookcase/book_case_detail.dart';
import 'package:flutter/material.dart';

class BookCaseScreen extends StatefulWidget {
  const BookCaseScreen({super.key});

  @override
  State<StatefulWidget> createState() => _BookCaseScreen();
}

class _BookCaseScreen extends State<BookCaseScreen>
    with TickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 2 / 30,
          padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
          decoration: BoxDecoration(color: Colors.blue[800]),
          child: TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              controller: _controller,
              tabs: [
                Tab(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.replay_circle_filled_rounded,
                          size: 14,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text('Vừa xem')
                      ]),
                ),
                Tab(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.bookmark,
                          size: 14,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text('Theo dõi')
                      ]),
                ),
                Tab(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.download,
                          size: 14,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text('Đâ tải')
                      ]),
                )
              ]),
        ),
        Expanded(
          child: TabBarView(controller: _controller, children: [
            BookCaseDetail(),
            BookCaseDetail(),
            BookCaseDetail(),
          ]),
        )
      ],
    );
  }
}
