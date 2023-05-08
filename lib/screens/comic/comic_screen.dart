import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:clon_app/blocs/manga_bloc.dart';
import 'package:clon_app/events/manga_event.dart';
import 'package:clon_app/widgets/comic_item.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../models/argument/sort_comic_argument.dart';

class ComicScreen extends StatefulWidget {
  const ComicScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ComicScreen();
}

class _ComicScreen extends State<ComicScreen> {
  var activeIndex = 0;
  List<Widget> image = [
    Image.network(
      'https://burst.shopifycdn.com/photos/man-wearing-loose-clothing-walks-through-jungle.jpg?width=925&format=pjpg&exif=1&iptc=1',
      fit: BoxFit.cover,
      scale: 1,
    ),
    Image.network(
      'https://burst.shopifycdn.com/photos/man-wearing-loose-clothing-walks-through-jungle.jpg?width=925&format=pjpg&exif=1&iptc=1',
      fit: BoxFit.cover,
      scale: 1,
    ),
    Image.network(
      'https://burst.shopifycdn.com/photos/man-wearing-loose-clothing-walks-through-jungle.jpg?width=925&format=pjpg&exif=1&iptc=1',
      fit: BoxFit.cover,
      scale: 1,
    ),
    Image.network(
      'https://burst.shopifycdn.com/photos/man-wearing-loose-clothing-walks-through-jungle.jpg?width=925&format=pjpg&exif=1&iptc=1',
      fit: BoxFit.cover,
      scale: 1,
    ),
    Image.network(
      'https://burst.shopifycdn.com/photos/man-wearing-loose-clothing-walks-through-jungle.jpg?width=925&format=pjpg&exif=1&iptc=1',
      fit: BoxFit.cover,
      scale: 1,
    ),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color: Colors.blue[800],
            height: MediaQuery.of(context).size.height * 2 / 30,
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                const Text(
                  'Đọc Truyện Tranh',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                const Spacer(),
                InkWell(
                  onTap: () => context.read<MangaBloc>().add(MangaLoading()),
                  child: const Icon(
                    Icons.search_rounded,
                    color: Colors.white,
                    size: 18,
                  ),
                )
              ],
            ),
          ),
          //slide imgae
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                PageView(
                  children: image,
                  onPageChanged: (index) {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                ),
                Align(
                  alignment: const Alignment(0, 0.8),
                  child: AnimatedSmoothIndicator(
                      activeIndex: activeIndex,
                      count: image.length,
                      effect: const ScrollingDotsEffect(
                          spacing: 20,
                          paintStyle: PaintingStyle.fill,
                          activeStrokeWidth: 8,
                          maxVisibleDots: 5,
                          activeDotScale: 2,
                          radius: 16,
                          dotHeight: 8,
                          dotWidth: 8,
                          dotColor: Colors.white,
                          activeDotColor: Colors.white)),
                ),
                // CarouselIndicator(
                //   count: image.length,
                //   index: activeIndex,
                // ),
                // CarouselSlider(
                //     // carouselController: _carouselController,
                //     items: image.map((i) {
                //       return Builder(
                //         builder: (BuildContext context) {
                //           return SizedBox(
                //             width: double.infinity,
                //             child: Image.network(
                //               '$i',
                //               fit: BoxFit.cover,
                //             ),
                //           );
                //         },
                //       );
                //     }).toList(),
                //     options: CarouselOptions(
                //         autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                //         onPageChanged: (index, reason) => {
                //               setState(() {
                //                 activeIndex = index;
                //               })
                //             },
                //         viewportFraction: 1,
                //         height: double.infinity)),
              ],
            ),
          ),
          //end
          Container(
            padding: const EdgeInsets.fromLTRB(8, 14, 8, 8),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () => Navigator.of(context).pushNamed(
                            "/sort_comic",
                            arguments: SortComicArguments(
                                status: "Tất cả", orderby: "Ngày cập nhật")),
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 18, 0, 18),
                          child: Column(
                            children: const [
                              Icon(Icons.menu),
                              Text(
                                'Thể loại',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () => Navigator.of(context).pushNamed(
                            "/sort_comic",
                            arguments: SortComicArguments(
                                status: "Tất cả", orderby: "Ngày cập nhật")),
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 18, 0, 18),
                          child: Column(
                            children: const [
                              Icon(Icons.menu),
                              Text(
                                'Bộ lọc',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        // onTap: () => Navigator.of(context).pushNamed(
                        //     "/sort_comic",
                        //     arguments: SortComicArguments(
                        //         status: "Tất cả", orderby: "Lượt xem")),
                        onTap: () =>
                            context.read<MangaBloc>().add(MangaLoading()),
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 18, 0, 18),
                          child: Column(
                            children: const [
                              Icon(Icons.menu),
                              Text(
                                'Hot',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () => Navigator.of(context).pushNamed(
                            "/sort_comic",
                            arguments: SortComicArguments(
                                status: "Tất cả", orderby: "Truyện mới")),
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 18, 0, 18),
                          child: Column(
                            children: const [
                              Icon(Icons.menu),
                              Text(
                                'Truyện mới',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                //New
                buildContent("Mới Cập Nhật"),
                const SizedBox(
                  height: 16,
                ),
                buildList(),
                // Isekai
                buildContent("Isekai"),
                const SizedBox(
                  height: 16,
                ),
                buildList(),
                // Ngôn tình
                buildContent("Ngôn Tình"),
                const SizedBox(
                  height: 16,
                ),
                buildList(),
                // VIP
                buildContent("VIP"),
                const SizedBox(
                  height: 16,
                ),
                buildList(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContent(String content) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(
          width: 8,
        ),
        Text(
          'Truyện $content',
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        InkWell(
            onTap: () => Navigator.of(context).pushNamed("/sort_comic",
                arguments: SortComicArguments(
                    status: "Tất cả", orderby: "Truyện mới")),
            child: const Icon(
              Icons.navigate_next,
              size: 32,
            ))
      ],
    );
  }

  Widget buildList() {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 9,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.41,
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4),
      itemBuilder: (context, index) => ComicItem(
        paddingIS: false,
      ),
    );
  }
}
