import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PaymentHistoryScreen extends StatefulWidget {
  const PaymentHistoryScreen({super.key});

  @override
  State<StatefulWidget> createState() => _PaymentHistoryScreen();
}

class _PaymentHistoryScreen extends State<PaymentHistoryScreen> {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[800],
            leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back),
            ),
            title: const Text('Lịch Sử Nạp Tiên Linh Thạch'),
          ),
        ),
      );
}
