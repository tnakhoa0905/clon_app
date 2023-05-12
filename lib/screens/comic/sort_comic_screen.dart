import 'dart:math';

import 'package:clon_app/models/argument/sort_comic_argument.dart';
import 'package:clon_app/models/genre.dart';
import 'package:clon_app/widgets/comic_item.dart';

import 'package:flutter/material.dart';

import '../../blocs/sort_comic_bloC.dart';

class SortComicScreen extends StatefulWidget {
  SortComicScreen({super.key, this.sort});
  SortComicArguments? sort;

  @override
  State<SortComicScreen> createState() => _SortComicScreenState();
}

class _SortComicScreenState extends State<SortComicScreen> {
  List<Genre> _listGenre = [];

  @override
  void initState() {
    print("debug: ${widget.sort?.orderby}");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.sort);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.close),
        ),
        title: const Text('Danh Sách Truyện'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // StreamBuilder<List<Genre>>(
              //     stream: sortComicBloC.listGenerStream,
              //     builder: (context, snapshot) {
              //       if (snapshot.hasData) {
              //         _listGenre = snapshot.data!;
              //         return Wrap(
              //           spacing: 8,
              //           children: [
              //             for (var genre in _listGenre)
              //               ElevatedButton(
              //                 onPressed: () {},
              //                 child: Text('Xếp theo: ${genre.title}'),
              //               ),
              //           ],
              //         );
              //       } else
              //         return CircularProgressIndicator();
              //     }),
              Wrap(
                spacing: 8,
                children: [
                  for (var genre in _listGenre)
                    ElevatedButton(
                      onPressed: () {
                        print(genre.title);
                      },
                      child: Text(genre.title),
                    ),
                ],
              ),
              Wrap(
                spacing: 8,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Xếp theo: ${widget.sort?.orderby}'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Trạng thái: ${widget.sort?.status}'),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  const Spacer(),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber),
                      onPressed: () => showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (builder) {
                            const List<String> status = [
                              'Tất cả',
                              'Đang ra',
                              'Hoành thành'
                            ];
                            final List<bool> _selectedStatus = <bool>[
                              true,
                              false,
                              false
                            ];
                            widget.sort?.status = 'Tất cả';
                            _listGenre.clear();
                            List<Genre> listGenre = [
                              Genre(title: "Action", isChecked: false),
                              Genre(title: "Adult", isChecked: false),
                              Genre(title: "Adventure", isChecked: false),
                              Genre(title: "Anime", isChecked: false),
                              Genre(title: "Comedy", isChecked: false),
                              Genre(title: "Comic", isChecked: false),
                              Genre(title: "Cổ đại", isChecked: false),
                              Genre(title: "Demons", isChecked: false),
                              Genre(title: "Detecive", isChecked: false),
                              Genre(title: "Doujinshi", isChecked: false),
                            ];
                            return StatefulBuilder(
                              builder: (BuildContext context,
                                      StateSetter setState) =>
                                  Container(
                                      padding: const EdgeInsets.all(8),
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              7 /
                                              10,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10.0),
                                              topRight: Radius.circular(10.0))),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment(1, 0),
                                              child: ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Container(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          16, 0, 16, 0),
                                                      child: Text('OK'))),
                                            ),
                                            Row(
                                              children: [
                                                const Text('Trạng thái:'),
                                                ToggleButtons(
                                                  color: Colors.grey,
                                                  fillColor: Colors.white,
                                                  renderBorder: false,
                                                  selectedColor: Colors.black,
                                                  onPressed: (int index) {
                                                    setState(() {
                                                      for (int i = 0;
                                                          i <
                                                              _selectedStatus
                                                                  .length;
                                                          i++) {
                                                        _selectedStatus[i] =
                                                            i == index;
                                                      }
                                                      // widget.sort?.status =
                                                      //     fruits[index];
                                                    });
                                                  },
                                                  isSelected: _selectedStatus,
                                                  children: [
                                                    for (int i = 0;
                                                        i < status.length;
                                                        i++)
                                                      Container(
                                                        color: _selectedStatus[
                                                                    i] ==
                                                                false
                                                            ? Colors.grey[200]
                                                            : Colors.blue[800],
                                                        margin:
                                                            EdgeInsets.all(4.0),
                                                        child: Text(status[i]),
                                                      ),
                                                  ],
                                                ),
                                                // ElevatedButton(
                                                //   onPressed: () {},
                                                //   style:
                                                //       ElevatedButton.styleFrom(
                                                //     shape:
                                                //         RoundedRectangleBorder(
                                                //       borderRadius:
                                                //           BorderRadius.circular(
                                                //               0),
                                                //     ),
                                                //   ),
                                                //   child: const Text("Tất cả"),
                                                // ),
                                                // ElevatedButton(
                                                //   onPressed: () {},
                                                //   style:
                                                //       ElevatedButton.styleFrom(
                                                //     shape:
                                                //         RoundedRectangleBorder(
                                                //       borderRadius:
                                                //           BorderRadius.circular(
                                                //               0),
                                                //     ),
                                                //   ),
                                                //   child: const Text("Đang ra"),
                                                // ),
                                                // ElevatedButton(
                                                //   onPressed: () {},
                                                //   style:
                                                //       ElevatedButton.styleFrom(
                                                //     backgroundColor:
                                                //         Colors.grey[100],
                                                //     shape:
                                                //         RoundedRectangleBorder(
                                                //       borderRadius:
                                                //           BorderRadius.circular(
                                                //               0),
                                                //     ),
                                                //   ),
                                                //   child: const Text(
                                                //     "Hoàn thành",
                                                //     style: TextStyle(
                                                //         color: Colors.black),
                                                //   ),
                                                // ),

                                                // ToggleButtons(
                                                //   direction: Axis.horizontal,
                                                //   onPressed: (int index) {
                                                //     setState(() {
                                                //       // The button that is tapped is set to true, and the others to false.
                                                //   for (int i = 0;
                                                //       i <
                                                //           _selectedFruits
                                                //               .length;
                                                //       i++) {
                                                //     _selectedFruits[i] =
                                                //         i == index;
                                                //   }
                                                //   widget.sort?.status =
                                                //       fruits[index];
                                                // });
                                                //   },
                                                //   disabledColor: Color.fromARGB(
                                                //       255, 110, 11, 11),
                                                //   disabledBorderColor:
                                                //       Colors.grey,
                                                //   selectedBorderColor:
                                                //       Colors.blue[800],
                                                //   selectedColor: Colors.white,
                                                //   fillColor: Colors.blue[800],
                                                //   color: Colors.white,
                                                //   constraints:
                                                //       const BoxConstraints(
                                                //     minHeight: 40.0,
                                                //     minWidth: 80.0,
                                                //   ),
                                                //   isSelected: _selectedFruits,
                                                //   renderBorder: false,
                                                // children: [
                                                // for (var item in fruits)
                                                //   Text(item),
                                                // ],
                                                // ),
                                              ],
                                            ),
                                            // Row(
                                            //   children: [
                                            //     Text('Xếp theo:'),
                                            //     for (var item in fruits)
                                            //       Text(item)
                                            //   ],
                                            // ),
                                            Text('Thể loại'),
                                            GridView.builder(
                                              physics:
                                                  const NeverScrollableScrollPhysics(),
                                              gridDelegate:
                                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                                      childAspectRatio: 4,
                                                      crossAxisCount: 2),
                                              itemCount: listGenre.length,
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) =>
                                                  Row(
                                                children: [
                                                  Checkbox(
                                                    value: listGenre[index]
                                                        .isChecked,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        print(value);
                                                        if (value == true) {
                                                          _listGenre.add(
                                                              listGenre[index]);
                                                        } else {}

                                                        listGenre[index]
                                                            .isChecked = value!;
                                                      });
                                                    },
                                                  ),
                                                  Text(
                                                      '${listGenre[index].title}')
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )),
                            );
                          }).then((value) => {setState(() {})}),
                      child: const Text('Lọc mới')),
                ],
              ),
              // GridView.builder(
              //     itemCount: 30,
              //     shrinkWrap: true,
              //     physics: const NeverScrollableScrollPhysics(),
              //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //         childAspectRatio: 0.41,
              //         crossAxisCount: 3,
              //         mainAxisSpacing: 4,
              //         crossAxisSpacing: 4),
              //     itemBuilder: (context, index) => ComicItem(
              //           paddingIS: false,
              //         ))
            ],
          ),
        ),
      ),
    );
  }
}
