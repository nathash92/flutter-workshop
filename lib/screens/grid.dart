import 'package:flutter/material.dart';

class GridExample extends StatelessWidget {
  const GridExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Albums'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_outlined,
            ),
          )
        ],
      ),
      body: const _GridBuilderExample(),
    );
  }
}

List<Widget> _buildImgCard(int count) {
  return List.generate(
    count,
    (index) => Image.network(
      'https://picsum.photos/200/300',
      fit: BoxFit.fill,
    ),
  );
}

class _GridCountExample extends StatelessWidget {
  const _GridCountExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: MediaQuery.of(context).size.width > 900 ? 6 : 2,
      padding: const EdgeInsets.all(8.0),
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      children: _buildImgCard(
        MediaQuery.of(context).size.width > 900 ? 20 : 10,
      ),
    );
  }
}

class _GridBuilderExample extends StatelessWidget {
  const _GridBuilderExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.of(context).size.width > 900 ? 6 : 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        mainAxisExtent: 150.0,
      ),
      itemCount: 400,
      itemBuilder: (BuildContext context, int index) {
        return Image.network(
          'https://picsum.photos/200/300',
          fit: BoxFit.fill,
        );
      },
    );
  }
}
