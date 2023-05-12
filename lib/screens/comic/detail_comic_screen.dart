import 'package:clon_app/screens/comic/detail_comic/contents_tab.dart';
import 'package:clon_app/screens/comic/detail_comic/introduce_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../models/manga.dart';
import 'detail_comic/reviews_tab.dart';

class DetailComicScreen extends StatefulWidget {
  Manga manga;
  DetailComicScreen({super.key, required this.manga});

  @override
  State<DetailComicScreen> createState() => _DetailComicScreenState();
}

class _DetailComicScreenState extends State<DetailComicScreen>
    with TickerProviderStateMixin {
  bool _savedState = false;
  late TabController _controller;
  List _categories = [
    "Action",
    "Adventure",
    "Fantasy",
    "Manhua",
    "Truyện Siêu Hay"
  ];
  List _categoriess = [
    "Action",
    "Adventure",
    "Fantasy",
  ];
  void setSavedState() {
    setState(() {
      _savedState = !_savedState;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _controller = TabController(length: 3, vsync: this);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      //yourcode
      showAlert(context);
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  void showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          Future.delayed(
            const Duration(seconds: 2),
            () {
              Navigator.of(context).pop(true);
            },
          );

          return AlertDialog(
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: const [
                SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: buildBottomNavigationBar(context),
      appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: const Text('Thông Tin Truyện'),
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_sharp),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.menu_book_sharp))
          ]),
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverToBoxAdapter(
                child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.27,
                  child: Image.network(
                      fit: BoxFit.fill,
                      'https://burst.shopifycdn.com/photos/man-wearing-loose-clothing-walks-through-jungle.jpg?width=925&format=pjpg&exif=1&iptc=1'),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 8),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.27,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.width * 2 / 5,
                          child: Image.network(
                            widget.manga.imageUrl,
                            fit: BoxFit.cover,
                          )),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 16),
                          height: MediaQuery.of(context).size.width * 2 / 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Flexible(
                                  child: Text(
                                'Nguyên Tôn',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                              Flexible(
                                fit: FlexFit.loose,
                                child: ListView.builder(
                                    itemCount: 5,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) => const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        )),
                              ),
                              Wrap(
                                spacing: 8,
                                runSpacing: 8,
                                direction: Axis.horizontal,
                                children: _categories
                                    .map((e) => Container(
                                        padding: const EdgeInsets.all(2),
                                        color: Colors.blue[300],
                                        child: Text(
                                          '# ' + e,
                                          style: const TextStyle(
                                              color: Colors.white),
                                        )))
                                    .toList(),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Wrap(
                                  spacing: 8,
                                  runSpacing: 8,
                                  direction: Axis.horizontal,
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: const [
                                            Icon(
                                              Icons.trending_up_rounded,
                                              color: Colors.white,
                                              size: 14,
                                            ),
                                            Text(
                                              " Đang ra",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        )),
                                    Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: const [
                                            Icon(
                                              Icons.face,
                                              color: Colors.white,
                                              size: 14,
                                            ),
                                            Text(
                                              " 998k",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        )),
                                    Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: const [
                                            Icon(
                                              Icons.bookmark,
                                              color: Colors.white,
                                              size: 14,
                                            ),
                                            Text(
                                              " 22k",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ))
                                  ]),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
            SliverToBoxAdapter(
              child: TabBar(
                controller: _controller,
                labelColor: Colors.black,
                indicatorColor: const Color.fromARGB(255, 23, 199, 199),
                tabs: const [
                  Tab(
                    text: 'Giới Thiệu',
                  ),
                  Tab(
                    text: 'Mục Lục',
                  ),
                  Tab(
                    text: 'Đánh Giá',
                  )
                ],
              ),
            ),
          ];
        },
        body: TabBarView(controller: _controller, children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                      'dfahdfjhd jdfhkjahdf sdf df ds f dsf sd f dsf d fs df sd f sf sd f sà sd f sdf sd f sd f sdà s adf á df sd f sd f s df sa '),
                  const Divider(),
                  const Text(
                    'Bình Luận Mới Nhất',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 60,
                      itemBuilder: ((context, index) => Container(
                            margin: const EdgeInsets.only(top: 16),
                            padding: const EdgeInsets.only(bottom: 16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                  radius: 32,
                                ),
                                const SizedBox(
                                  width: 32,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        selectionColor: Colors.amber,
                                        text: const TextSpan(
                                            text: 'khoa 054123',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                            children: [
                                              TextSpan(
                                                  text: ' \u2022 ',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: Colors.grey)),
                                              TextSpan(
                                                  text: 'Luyện khí tầng một',
                                                  style: TextStyle(
                                                      color: Colors.grey)),
                                              TextSpan(
                                                  text: ' \u2022 ',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: Colors.grey)),
                                              TextSpan(
                                                  text: '21 ngày trước',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: Colors.grey)),
                                            ]),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      const Text('Khoa thật là hihihihihi')
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ))),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                // shrinkWrap: true,
                itemCount: 60,
                itemBuilder: ((context, index) => Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/image3.png'),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Chapter 1'),
                              SizedBox(
                                height: 4,
                              ),
                              Text('20:46 21/12/2023'),
                              SizedBox(
                                height: 8,
                              ),
                              Divider(
                                height: 1,
                              )
                            ],
                          ),
                        )
                      ],
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                    width: 30,
                    height: 30,
                    child: const CircularProgressIndicator()),
              ],
            ),
          )
        ]),
      ),
    );
  }

  Widget buildBottomNavigationBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      width: MediaQuery.of(context).size.width,
      color: Colors.blue[800],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
              child: GestureDetector(
            onTap: setSavedState,
            child: Icon(
              Icons.bookmark,
              color: _savedState == false ? Colors.white : Colors.amber,
            ),
          )),
          const Flexible(
              child: Icon(
            Icons.download,
            color: Colors.white,
          )),
          const Flexible(
              child: Icon(
            Icons.share,
            color: Colors.white,
          )),
          Flexible(
            flex: 5,
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .pushNamed("/readComic", arguments: widget.manga.chapters);
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(4)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'chapter 1',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.navigate_next)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
