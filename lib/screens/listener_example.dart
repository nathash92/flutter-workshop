import 'package:flutter/material.dart';

class ListenerExample extends StatefulWidget {
  const ListenerExample({Key? key}) : super(key: key);

  @override
  State<ListenerExample> createState() => _ListenerExampleState();
}

class _ListenerExampleState extends State<ListenerExample> {
  double x = 0;
  double y = 0;

  double _getFractionalVal(double val, String type) {
    var n = val;
    var max = type == 'width'
        ? MediaQuery.of(context).size.width
        : MediaQuery.of(context).size.height;
    var half = max / 2;
    var perc = (n / max) * 100;
    var r = ((perc / 100) * 1);
    var r1 = (n >= half) ? r : (1 - r) * -1;
    return double.parse(r1.toStringAsFixed(1));
  }

  void _handlePointerDown(PointerEvent ev) {
    debugPrint(ev.position.direction.toString());
    setState(() {
      x = _getFractionalVal(ev.position.dx, 'width');
      y = _getFractionalVal(ev.position.dy, 'height');
      debugPrint('$x $y');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listener Example'),
      ),
      body: Listener(
        onPointerMove: _handlePointerDown,
        child: Container(
          color: Colors.green[100],
          child: Center(
            child: Align(
              alignment: Alignment(x, y),
              child: _Ball(),
            ),
          ),
        ),
      ),
    );
  }
}

class _Ball extends StatelessWidget {
  const _Ball({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 50.0,
        minHeight: 50.0,
        maxHeight: 50.0,
        maxWidth: 50.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );
  }
}
