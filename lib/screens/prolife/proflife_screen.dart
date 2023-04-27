import 'package:clon_app/models/option_prolife.dart';
// import 'package:clon_app/screens/auth/change_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../models/argument/sort_comic_argument.dart';

class ProlifeScreen extends StatefulWidget {
  const ProlifeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ProlifeScreen();
}

class _ProlifeScreen extends State<ProlifeScreen> {
  _launchURL() async {
    const url = 'https://app.truyensieuhay.com/';
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 30, 16, 30),
            color: Colors.blue[800],
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.amber,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('tnakhoa0905',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 14)),
                    Text('Luyện khí tầng 1 - 50/100',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 16))
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            color: Colors.blue[800],
            child: Row(
              children: const [
                Icon(
                  Icons.safety_check_outlined,
                  size: 24,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 36,
                ),
                Text(
                  'Chức Năng Thành Viên',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 14),
                )
              ],
            ),
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: listOptionAccount.length,
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        listOptionAccount[index].toNamed,
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          SizedBox(
                              width: 60,
                              child: Align(
                                  alignment: const Alignment(-1, 0),
                                  child: listOptionAccount[index].icon)),
                          Text(
                            listOptionAccount[index].title,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  )),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            color: Colors.blue[800],
            child: Row(
              children: const [
                Icon(
                  Icons.safety_check_outlined,
                  size: 24,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 36,
                ),
                Text(
                  'Đọc truyện',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 16),
                )
              ],
            ),
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: listOptionComic.length,
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      switch (index) {
                        case 0:
                          {
                            Navigator.of(context).pushNamed(
                              listOptionComic[index].toNamed,
                            );
                          }
                          break;
                        case 1:
                          {
                            Navigator.of(context).pushNamed(
                                listOptionComic[index].toNamed,
                                arguments: SortComicArguments(
                                    status: "Tất cả", orderby: "Lượt xem"));
                          }
                          break;
                        case 2:
                          {
                            Navigator.of(context).pushNamed(
                                listOptionComic[index].toNamed,
                                arguments: SortComicArguments(
                                    status: "Tất cả", orderby: "Lượt xem"));
                          }
                          break;
                        case 3:
                          {
                            Navigator.of(context).pushNamed(
                                listOptionComic[index].toNamed,
                                arguments: SortComicArguments(
                                    status: "Tất cả", orderby: "Lượt xem"));
                          }
                          break;
                        case 4:
                          {
                            Navigator.of(context).pushNamed(
                              listOptionComic[index].toNamed,
                            );
                          }
                          break;
                        case 5:
                          {
                            Navigator.of(context).pushNamed(
                              listOptionComic[index].toNamed,
                            );
                          }
                          break;
                        case 6:
                          {
                            Navigator.of(context).pushNamed(
                                listOptionComic[index].toNamed,
                                arguments: SortComicArguments(
                                    status: "Tất cả", orderby: "Lượt xem"));
                          }
                          break;

                        default:
                          throw const FormatException('Route khong ton tai');
                      }
                    }

                    // if (index == 1) {
                    //   Navigator.of(context).pushNamed(
                    //       listOptionComic[index].toNamed,
                    //       arguments: SortComicArguments(
                    //           status: "Tất cả", orderby: "Lượt xem"));
                    // }
                    // if (index == 2) {
                    //   print(result);
                    //   Navigator.of(context).pushNamed(
                    //       listOptionComic[index].toNamed,
                    //       arguments: result);
                    // }
                    // if (index == 3) {
                    //   Navigator.of(context).pushNamed(
                    //       listOptionComic[index].toNamed,
                    //       arguments: SortComicArguments(
                    //           status: "Tất cả", orderby: "Ngày ra mắt"));
                    // }

                    // if (index == listOptionComic.length - 1) {
                    //   _launchURL();
                    // } else {
                    //   print(listOptionComic[index].toNamed);
                    //   Navigator.of(context).pushNamed(
                    //     listOptionComic[index].toNamed,
                    //   );
                    // }

                    ,
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          SizedBox(
                              width: 60,
                              child: Align(
                                  alignment: const Alignment(-1, 0),
                                  child: listOptionComic[index].icon)),
                          Text(
                            listOptionComic[index].title,
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  )),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Phiên bản 1.4.3',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      // color: Colors.white,
                      fontSize: 16),
                ),
                Text(
                  'Thực hiện bởi Beblue',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      // color: Colors.white,
                      fontSize: 14),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  var listOptionAccount = [
    OptionProlife(
        const Icon(Icons.abc), 'Tiên Linh Thạch Của Bạn', "/tien_linh_thach"),
    OptionProlife(const Icon(Icons.abc), 'Thông Báo Của Bạn', "/notification"),
    OptionProlife(
        const Icon(Icons.abc), 'Đổi Thông Tin Tài Khoản', "/change_prolife"),
    OptionProlife(const Icon(Icons.abc), 'Đổi Mật Khẩu', "/change_password"),
    OptionProlife(const Icon(Icons.abc), 'Nạp Tiên Linh Thạch', "/payment"),
    OptionProlife(const Icon(Icons.abc), 'Tiệm Tạp Hóa', "/store"),
    OptionProlife(const Icon(Icons.abc), 'Túi Càn Khôn', "/tui_can_khon"),
    OptionProlife(const Icon(Icons.abc), 'Lịch Sử Nạp', "/payment_hist"),
    OptionProlife(const Icon(Icons.abc), 'Đăng Xuất', "")
  ];
  var listOptionComic = [
    OptionProlife(const Icon(Icons.abc), 'Cửa Hàng', "/store"),
    OptionProlife(const Icon(Icons.abc), 'Danh Sách Truyện', "/sort_comic"),
    OptionProlife(const Icon(Icons.abc), 'Truyện Hot 100 độ', "/sort_comic"),
    OptionProlife(const Icon(Icons.abc), 'Truyện Mới Ra Lò', "/sort_comic"),
    OptionProlife(const Icon(Icons.abc), 'Hướng Dẫn Sử Dụng App', "/store"),
    OptionProlife(const Icon(Icons.abc), 'Link Tải Ứng Dụng',
        "https://app.truyensieuhay.com/"),
  ];
}

SortComicArguments result =
    SortComicArguments(status: "Tất cả", orderby: "Lượt xem");
