import 'package:flutter/material.dart';

class ChangePassWord extends StatefulWidget {
  const ChangePassWord({super.key});

  @override
  State<ChangePassWord> createState() => _ChangePassWordState();
}

class _ChangePassWordState extends State<ChangePassWord> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back)),
          title: const Text('Đổi Mật Khẩu'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(flex: 3, child: Text("Mật khẩu cũ:")),
                  Flexible(
                    flex: 7,
                    child: TextFormField(
                      decoration: const InputDecoration(),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(flex: 3, child: Text("Mật khẩu mới:")),
                  Flexible(
                    flex: 7,
                    child: TextFormField(
                      decoration: const InputDecoration(),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(flex: 3, child: Text("Xác nhận lại:")),
                  Flexible(
                    flex: 7,
                    child: TextFormField(
                      decoration: const InputDecoration(),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 16),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[800]),
                    onPressed: () {},
                    child: const Text('Cập nhật')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
