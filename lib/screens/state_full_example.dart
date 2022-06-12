import 'package:flutter/material.dart';

class StateFullExample extends StatefulWidget {
  const StateFullExample({Key? key}) : super(key: key);

  @override
  State<StateFullExample> createState() => _StateFullExampleState();
}

class _StateFullExampleState extends State<StateFullExample> {
  int upvote = 0;
  int downvote = 0;

  void _changeUpvote() {
    setState(() {
      upvote += 1;
    });
  }

  void _changeDownvote() {
    setState(() {
      downvote += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Full Widget Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ThumbWidget(
              thumbType: 'up',
              value: upvote,
              onClick: _changeUpvote,
            ),
            const SizedBox(
              width: 20.0,
            ),
            ThumbWidget(
              thumbType: 'down',
              value: downvote,
              onClick: _changeDownvote,
            ),
          ],
        ),
      ),
    );
  }
}

class ThumbWidget extends StatelessWidget {
  const ThumbWidget({
    required this.thumbType,
    required this.value,
    required this.onClick,
    Key? key,
  }) : super(key: key);

  final String thumbType;
  final int value;
  final VoidCallback onClick;

  void _handleClick() {
    onClick();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleClick,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            thumbType == 'up' ? Icons.thumb_up : Icons.thumb_down,
            color: thumbType == 'up' ? Colors.green : Colors.red,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(value.toString()),
          const SizedBox(
            width: 5.0,
          ),
          Text(thumbType == 'up' ? 'Likes' : 'DisLikes'),
        ],
      ),
    );
  }
}
