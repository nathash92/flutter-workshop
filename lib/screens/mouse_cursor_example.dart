import 'package:flutter/material.dart';

class MouseCursorExample extends StatelessWidget {
  const MouseCursorExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mouse Cursor'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          _MouseCursorItem(
            cursor: SystemMouseCursors.click,
            title: 'Click',
          ),
          _MouseCursorItem(
            cursor: SystemMouseCursors.copy,
            title: 'Copy',
          ),
          _MouseCursorItem(
            cursor: SystemMouseCursors.forbidden,
            title: 'Disabled',
          ),
          _MouseCursorItem(
            cursor: SystemMouseCursors.help,
            title: 'Help',
          )
        ],
      ),
    );
  }
}

class _MouseCursorItem extends StatelessWidget {
  const _MouseCursorItem({
    required this.title,
    required this.cursor,
    Key? key,
  }) : super(key: key);

  final String title;
  final MouseCursor cursor;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: cursor,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(title),
      ),
    );
  }
}
