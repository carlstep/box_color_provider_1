import 'package:box_color_provider_1/components/box_container.dart';
import 'package:box_color_provider_1/const.dart';
import 'package:flutter/material.dart';

class BoxTileDisplayPage extends StatefulWidget {
  const BoxTileDisplayPage({super.key});

  @override
  State<BoxTileDisplayPage> createState() => _BoxTileDisplayPage();
}

class _BoxTileDisplayPage extends State<BoxTileDisplayPage> {
  int boxCount = 3;

  void addBoxContainer() {
    setState(() {
      boxCount++;
    });
  }

  void removeBoxContainer(int index) {
    setState(() {
      boxCount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text('Display Box Containers...'),
          Text('Number of Container... $boxCount'),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: boxCount,
              itemBuilder: (context, index) {
                print(index);
                return MyBoxContainer(
                  icon: Icon(Icons.delete),
                  boxContainerIndex: '$index',
                  onPressed: () => removeBoxContainer(index),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                child: Icon(
                  Icons.add,
                  size: 30,
                ),
                onPressed: addBoxContainer,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
