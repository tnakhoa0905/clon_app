import 'package:flutter/material.dart';

class WorldDetail extends StatelessWidget {
  WorldDetail({super.key, required this.itemBuilder});
  Widget itemBuilder;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: 6,
      shrinkWrap: true,
      itemBuilder: (context, index) => itemBuilder,
    );
  }
}
