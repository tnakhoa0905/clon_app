import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ChangeProlifeScreen extends StatefulWidget {
  const ChangeProlifeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ChangeProlifeScreen();
}

class _ChangeProlifeScreen extends State<ChangeProlifeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        // elevation: 0,
        title: const Text('Thông Tin Cá Nhân'),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: ExpandableNotifier(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 32),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 2 / 5,
                color: Colors.blue[800],
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CircleAvatar(
                        radius: 40,
                      ),
                      Text(
                        'tnakhoa0905',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Danh hiệu: Tu sĩ cấp thấp',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Tu vi: Luyện khí tầng hai',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '10/200',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 16,
              ),
              Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  collapsedTextColor: const Color.fromARGB(255, 21, 101, 192),
                  iconColor: Colors.black,
                  title: const Text(
                    'Thay Đổi Thông Tin Tài Khoản',
                    style: TextStyle(color: Colors.black),
                  ),
                  collapsedIconColor: Colors.black,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 0, 8),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              icon: const Icon(Icons.mail),
                              labelText: 'Địa chỉ email',
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: Colors.blue,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                              ),
                            ),
                            // onSaved: (String? value) {},
                            // validator: (String? value) {
                            //   return (value != null && value.contains('@'))
                            //       ? 'Do not use the @ char.'
                            //       : null;
                            // },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              icon: const Icon(Icons.phone),
                              labelText: 'Số điện thoại',
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: Colors.blue,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                              ),
                            ),
                            // onSaved: (String? value) {},
                            // validator: (String? value) {
                            //   return (value != null && value.contains('@'))
                            //       ? 'Do not use the @ char.'
                            //       : null;
                            // },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              icon: const Icon(Icons.home),
                              labelText: 'Địa chỉ',
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: Colors.blue,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                  width: 2.0,
                                ),
                              ),
                            ),

                            // onSaved: (String? value) {},
                            // validator: (String? value) {
                            //   return (value != null && value.contains('@'))
                            //       ? 'Do not use the @ char.'
                            //       : null;
                            // },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue[800]),
                                onPressed: () {},
                                child: const Text('Cập nhật')),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Theme(
                data: Theme.of(context)
                    .copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  collapsedTextColor: const Color.fromARGB(255, 21, 101, 192),
                  iconColor: Colors.white,
                  title: const Text(
                    'Thay Đổi Avatar',
                    style: TextStyle(color: Colors.black),
                  ),
                  collapsedIconColor: Colors.black,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 0, 8),
                      child: Column(children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue[800]),
                              onPressed: () {},
                              child: const Text('Chọn Ảnh')),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                          child: Text('Bấm nút chọn ảnh ở trên để chọn ảnh'),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue[800]),
                              onPressed: () {},
                              child: const Text('Cập Nhật')),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
