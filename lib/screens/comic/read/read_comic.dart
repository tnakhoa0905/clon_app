import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// ignore: must_be_immutable
class ReadComicScreen extends StatefulWidget {
  ReadComicScreen({super.key, required this.chapter});
  int chapter;
  @override
  State<ReadComicScreen> createState() => _ReadComicScreenState();
}

class _ReadComicScreenState extends State<ReadComicScreen> {
  bool _showAppBar = true;
  bool _showBottomNavigationBar = true;
  String _title = '';
  @override
  void initState() {
    // TODO: implement initState
    _title = "Chapter ${widget.chapter}";
    // SchedulerBinding.instance.addPostFrameCallback((_) {
    //   //yourcode
    //   showAlert(context);
    // });
    Future.delayed(Duration.zero, () => showAlert(context));
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  void showAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          Future.delayed(
            const Duration(seconds: 2),
            () {
              Navigator.of(context, rootNavigator: true).pop();
              setState(() {
                _title = "Chapter ${widget.chapter}";
              });
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
    return Scaffold(
      appBar: _showAppBar == true
          ? AppBar(
              backgroundColor: Colors.blue[800],
              title: Text(_title),
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back),
              ),
              actions: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.category_rounded)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.menu_open))
              ],
            )
          : null,
      bottomNavigationBar: _showBottomNavigationBar == true
          ? Container(
              padding: const EdgeInsets.all(8),
              color: Colors.blue[800],
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                GestureDetector(
                  onTap: widget.chapter == 1
                      ? null
                      : () {
                          setState(() {
                            _title = "Đang tải...";
                          });
                          widget.chapter -= 1;

                          showAlert(context);
                        },
                  child: Icon(
                    Icons.arrow_back,
                    size: 40,
                    color: widget.chapter == 1 ? Colors.grey : Colors.white,
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.change_circle,
                  color: Colors.white,
                  size: 40,
                ),
                const Icon(
                  Icons.volunteer_activism,
                  color: Colors.red,
                  size: 40,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(32)),
                  child: const Text(
                    '121',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                const Icon(
                  Icons.messenger_rounded,
                  color: Colors.white,
                  size: 40,
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _title = "Đang tải...";
                    });
                    widget.chapter += 1;

                    showAlert(context);
                  },
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 40,
                    color: Colors.white,
                  ),
                )
              ]),
            )
          : null,
      body: GestureDetector(
        onDoubleTap: () {
          setState(() {
            _showAppBar = !_showAppBar;
            _showBottomNavigationBar = !_showBottomNavigationBar;
          });
        },
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  padding: const EdgeInsets.fromLTRB(8, 32, 8, 32),
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  child: Column(
                    children: [
                      const Text(
                        'MẸO NHỎ KHI SỬ DỤNG APP',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      RichText(
                          text: const TextSpan(
                              text: '1. Bạn ',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16),
                              children: [
                            TextSpan(
                              text: 'bấm vào màn hình 2 lần ',
                              style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(
                              text: '(double tap) để ',
                              style: TextStyle(color: Colors.red),
                            ),
                            TextSpan(
                              text: 'hiển thị hoặc ẩn thanh điều hướng',
                              style: TextStyle(color: Colors.black),
                            ),
                          ]))
                    ],
                  )),
              Container(
                padding: const EdgeInsets.fromLTRB(48, 80, 48, 80),
                child: Column(children: const [
                  Text(
                    'LIÊN HỆ QUẢNG CÁO',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
                  ),
                  Text('---',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w900)),
                  Text('0989789533',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w900)),
                ]),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.grey[400]),
                child: const Text(
                  'TRUYỆN ĐƯỢC VIỆT HÓA BỞI NHÓM DỊCH THẦN TIÊU HỘI',
                  style: TextStyle(fontSize: 11),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.blue),
                child: const Text(
                  textAlign: TextAlign.center,
                  'TRỌNG SINH ĐÔ THỊ TU TIÊN',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.grey[400]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 3 / 10,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 3 / 10,
                                child: Image.asset(
                                  'assets/images/image3.png',
                                  fit: BoxFit.cover,
                                )),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            flex: 6,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Dịch bởi:',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'Quỳnh Như',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  'Chỉnh sửa bởi:',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'Tatsu',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  'Đăng tại:',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'Truyensieuhay.com',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  'http://facebook.com/truyensieuhay',
                                  style: TextStyle(fontSize: 11),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                        'Anh Hùng Thiên Hạ, Nội Tại Thần Tiêu, Nhiệt Huyết Hôm Nay, Mãi Mãi Trường Tồn...'),
                    const Text(
                        'Nơi tụ tập của các bạn yếu thích truyện tranh cùng chí hướng không mong gì to tác chỉ mong chia sẻ truyện mình làm tới mọi người...'),
                    const Text('data'),
                    const Text('Chúc các bạn đọc truyện vui vẻ!'),
                    const SizedBox(
                      height: 80,
                    )
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Image.asset(
                          'assets/images/image3.png',
                          fit: BoxFit.cover,
                        )),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(48, 80, 48, 80),
                child: Column(children: const [
                  Text(
                    'LIÊN HỆ QUẢNG CÁO',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
                  ),
                  Text('---',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w900)),
                  Text('0989789533',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w900)),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
