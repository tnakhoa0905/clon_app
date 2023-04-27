import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TuiCanKhonScreen extends StatefulWidget {
  const TuiCanKhonScreen({super.key});

  @override
  State<StatefulWidget> createState() => _TuiCanKhonScreen();
}

class _TuiCanKhonScreen extends State<TuiCanKhonScreen> {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[800],
            leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back),
            ),
            title: const Text('Túi Càn Khôn'),
          ),
        ),
      );
}
