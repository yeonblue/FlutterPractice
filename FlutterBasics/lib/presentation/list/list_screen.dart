import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterbasics/presentation/list/widgets/list_tile.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});
  static List<String> example = [
    "sample_1",
    "sample_2",
    "sample_3",
    "sample_4",
    "sample_5",
    "sample_6",
    "sample_7",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Practice'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListItem(title: example[index], idx: index,);
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 4);
          },
          itemCount: example.length),
    );
  }
}
