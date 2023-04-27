import 'package:flutter/material.dart';

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

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 1;
  PageController _pageViewController = PageController();
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

    super.initState();
    _pageViewController = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          bottomNavigationBar: _buildBottomNavigationBar(context),
          body: PageView(
            controller: _pageViewController,
            children: screens,
            onPageChanged: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
          )),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      unselectedIconTheme: IconThemeData(opacity: 0.5),
      selectedIconTheme: IconThemeData(opacity: 1),
      selectedLabelStyle: TextStyle(color: Colors.white),
      unselectedLabelStyle: TextStyle(color: Colors.white),
      backgroundColor: Colors.blue[800],
      items: const [
        BottomNavigationBarItem(
          label: 'Tủ sách',
          icon: Icon(Icons.menu_book),
        ),
        BottomNavigationBarItem(
          label: 'Truyện tranh',
          icon: Icon(Icons.menu_book_sharp),
        ),
        BottomNavigationBarItem(
          label: 'Cửa hàng',
          icon: Icon(Icons.store),
        ),
        BottomNavigationBarItem(
          label: 'Thế giới',
          icon: Icon(Icons.gamepad),
        ),
        BottomNavigationBarItem(
          label: 'Tôi',
          icon: Icon(Icons.settings),
        )
      ],
      currentIndex: _currentIndex,
      onTap: (index) => _pageViewController.animateToPage(index,
          duration: Duration(milliseconds: 200), curve: Curves.bounceOut),
    );
  }
}
