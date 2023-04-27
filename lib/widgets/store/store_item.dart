import 'package:flutter/material.dart';

class StoreItem extends StatelessWidget {
  const StoreItem({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.only(bottom: 8, top: 8),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            child: Image.asset(
              'assets/images/image3.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Vip 12 Tháng',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue[800]),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text('Giá: 12000 Tiên Linh Thạch')
            ],
          ),
          const Spacer(),
          ElevatedButton(onPressed: () {}, child: const Text('Mua'))
        ],
      ),
    );
  }
}
