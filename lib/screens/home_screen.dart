import 'package:clon_app/blocs/manga_bloc.dart';
import 'package:clon_app/models/manga.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bookcase/book_case_screen.dart';
import 'comic/comic_screen.dart';
import 'prolife/proflife_screen.dart';
import 'store/store_screen.dart';
import 'world/world_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  // int _currentIndex = 1;
  // PageController _pageViewController = PageController();
  late TabController _controller;
  var screens = [
    const BookCaseScreen(),
    const ComicScreen(),
    const StoreScreen(),
    WorldScreen(),
    const ProlifeScreen()
  ];
  @override
  void initState() {
    // TODO: implement initState
    _controller = TabController(initialIndex: 1, length: 5, vsync: this);
    super.initState();
    // _pageViewController = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
    // _pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<MangaBloc, List<Manga>>(
            builder: (context, List<Manga> list) {
          return Column(
            children: [
              Expanded(
                child: TabBarView(controller: _controller, children: screens),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 2 / 30,
                decoration: BoxDecoration(color: Colors.blue[800]),
                child: TabBar(
                    labelPadding: EdgeInsets.all(0),
                    isScrollable: false,
                    indicatorColor: Colors.white,
                    labelColor: Colors.white,
                    controller: _controller,
                    tabs: [
                      Tab(
                        iconMargin: EdgeInsets.zero,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.replay_circle_filled_rounded,
                                // size: 14,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                'Tủ sách',
                                style: TextStyle(fontSize: 11),
                              )
                            ]),
                      ),
                      Tab(
                        iconMargin: EdgeInsets.zero,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.bookmark,
                                // size: 14,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                'Truyện tranh',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 11),
                              )
                            ]),
                      ),
                      Tab(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.download,
                                // size: 14,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                'Cửa hàng',
                                style: TextStyle(fontSize: 11),
                              )
                            ]),
                      ),
                      Tab(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.download,
                                // size: 14,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                'Thế giới',
                                style: TextStyle(fontSize: 11),
                              )
                            ]),
                      ),
                      Tab(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.download,
                                // size: 14,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                'Tôi',
                                style: TextStyle(fontSize: 11),
                              )
                            ]),
                      )
                    ]),
              ),
            ],
          );
        }),
      ),
    );
  }

  // BottomNavigationBar _buildBottomNavigationBar(BuildContext context) {
  //   return BottomNavigationBar(
  //     type: BottomNavigationBarType.fixed,
  //     selectedItemColor: Colors.white,
  //     unselectedItemColor: Colors.white,
  //     selectedFontSize: 14,
  //     unselectedFontSize: 14,
  //     unselectedIconTheme: IconThemeData(opacity: 0.5),
  //     selectedIconTheme: IconThemeData(opacity: 1),
  //     selectedLabelStyle: TextStyle(color: Colors.white),
  //     unselectedLabelStyle: TextStyle(color: Colors.white),
  //     backgroundColor: Colors.blue[800],
  //     items: const [
  //       BottomNavigationBarItem(
  //         label: 'Tủ sách',
  //         icon: Icon(Icons.menu_book),
  //       ),
  //       BottomNavigationBarItem(
  //         label: 'Truyện tranh',
  //         icon: Icon(Icons.menu_book_sharp),
  //       ),
  //       BottomNavigationBarItem(
  //         label: 'Cửa hàng',
  //         icon: Icon(Icons.store),
  //       ),
  //       BottomNavigationBarItem(
  //         label: 'Thế giới',
  //         icon: Icon(Icons.gamepad),
  //       ),
  //       BottomNavigationBarItem(
  //         label: 'Tôi',
  //         icon: Icon(Icons.settings),
  //       )
  //     ],
  //     currentIndex: _currentIndex,
  //     onTap: (index) => _pageViewController.animateToPage(index,
  //         duration: Duration(milliseconds: 200), curve: Curves.bounceOut),
  //   );
  // }
}
