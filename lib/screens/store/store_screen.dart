import 'package:clon_app/widgets/store/store_item.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StatefulWidget> createState() => _StoreScreen();
}

class _StoreScreen extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 2 / 30,
          color: Colors.blue[800],
          child: const Text(
            'Cửa Hàng',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) => StoreItem(),
            ),
          ),
        ),
      ],
    );
  }
}
