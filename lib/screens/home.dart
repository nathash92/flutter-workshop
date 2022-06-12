import 'package:flutter/material.dart';

class _ItemData {
  String title;
  _ItemRedirect redirect;

  _ItemData(
    this.title,
    this.redirect,
  );
}

class _ItemRedirect {
  String path;

  _ItemRedirect(
    this.path,
  );
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<_ItemData> _items = <_ItemData>[
    _ItemData('Grid View', _ItemRedirect('/grid')),
    _ItemData('State Full', _ItemRedirect('/state-full')),
    _ItemData('Mouse Cursor/Mouse Region', _ItemRedirect('/mouse-cursor')),
    _ItemData('Listener', _ItemRedirect('/listener'))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Examples'),
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: _items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            mouseCursor: SystemMouseCursors.click,
            title: Text(_items[index].title.toString()),
            trailing: const Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, _items[index].redirect.path);
            },
          );
        },
      ),
    );
  }
}
