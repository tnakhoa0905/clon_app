import 'package:clon_app/widgets/world/comment_item.dart';
import 'package:clon_app/widgets/world/review_item.dart';
import 'package:clon_app/widgets/world/world_detail.dart';
import 'package:flutter/material.dart';

class WorldScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WorldScreen();
}

class _WorldScreen extends State<WorldScreen> with TickerProviderStateMixin {
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
    // TODO: implement build
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
          height: MediaQuery.of(context).size.height * 2 / 30,
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
                        SizedBox(
                          width: 2,
                        ),
                        Text('Video preview')
                      ]),
                ),
                Tab(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Text('Bình Luận')]),
                ),
                Tab(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Text('Đánh Giá')]),
                )
              ]),
        ),
        Expanded(
          child: TabBarView(controller: _controller, children: [
            Container(
                padding: EdgeInsets.all(8),
                child: Text('Hiện không có video nào.')),
            WorldDetail(itemBuilder: CommentItem()),
            WorldDetail(itemBuilder: ReviewItem())
          ]),
        )
      ],
    );
  }
}
