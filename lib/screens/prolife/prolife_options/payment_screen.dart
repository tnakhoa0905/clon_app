import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('Nạp Tiên Linh Thạch'),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(child: Text('Vui lòng chọn phương thức sau:')),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[800]),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                    child: Row(
                      children: const [
                        Icon(Icons.shield),
                        SizedBox(
                          width: 24,
                        ),
                        Text('Nạp Qua Thẻ Điện Thoại'),
                        Spacer(),
                        Icon(Icons.navigate_next_sharp)
                      ],
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.green[800],
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[800]),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                    child: Row(
                      children: const [
                        Icon(Icons.shield),
                        SizedBox(
                          width: 24,
                        ),
                        Text('Nạp Qua Thẻ Điện Thoại'),
                        Spacer(),
                        Icon(Icons.navigate_next_sharp)
                      ],
                    ),
                  )),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Chú ý',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                '1 Tiên Linh Thạch tương ứng 100đ',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blue[800]),
              ),
              const Text('Ví dụ: 10k = 100 Tiên Linh Thạch'),
              const Text('50k = 500 Tiên Linh Thạch'),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Tiên Linh Thạch',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blue[800]),
              ),
              const Text('Dùng để mở khóa nội dung trên app'),
            ],
          ),
        ),
      ),
    );
  }
}
