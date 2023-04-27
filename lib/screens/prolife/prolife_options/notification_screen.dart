import "package:flutter/material.dart";

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: const Text('Thông Báo Của Bạn'),
          actions: const [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.notification_important,
                  color: Colors.white,
                ))
          ],
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: const Center(
          child: Text('null'),
        ),
      ),
    );
  }
}
