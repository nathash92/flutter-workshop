import 'package:flutter/material.dart';

class RowTutor extends StatelessWidget {
  const RowTutor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          _Card(),
          _Card(),
          _Card(),
        ],
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__340.jpg',
      width: 120.0,
    );
  }
}
