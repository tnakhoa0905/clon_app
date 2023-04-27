import 'package:flutter/material.dart';

class TienLinhThachScreen extends StatefulWidget {
  const TienLinhThachScreen({super.key});

  @override
  State<StatefulWidget> createState() => _TienLinhThachScreen();
}

class _TienLinhThachScreen extends State<TienLinhThachScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.close),
          ),
          title: Text('Tiên Linh Thạch Của Bạn'),
        ),
        body: Stack(
          children: [
            const SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image(
                  image: AssetImage('assets/images/image3.png'),
                  fit: BoxFit.cover),
            ),
            Align(
              alignment: Alignment(0, 0),
              child: Column(
                children: const [
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'tnakhoa0905',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'fanmyngox3@gmail.com',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Tiên Linh Thạch: 0',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'LUYỆN KHÍ TẦNG HAI',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    '30 / 200',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
