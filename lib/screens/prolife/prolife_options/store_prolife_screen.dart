import 'package:clon_app/widgets/store/store_item.dart';
import 'package:flutter/material.dart';

class StoreProlifeScreen extends StatefulWidget {
  const StoreProlifeScreen({super.key});

  @override
  State<StoreProlifeScreen> createState() => _StoreProlifeScreen();
}

class _StoreProlifeScreen extends State<StoreProlifeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: const Text('Cửa Hàng'),
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) => const StoreItem()),
        ),
      ),
    );
  }
}
