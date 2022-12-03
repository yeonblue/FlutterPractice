import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  const ListItem({Key? key, required this.title, required this.idx,}) : super(key: key);
  final String title;
  final int idx;

  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool _isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        title: Text(widget.title),
        subtitle: Text('item index - ${widget.idx}'),
        leading: Checkbox(
          value: _isSelected,
          onChanged: (value) {
            setState(() {
              _isSelected = value ?? false;
            });
          },
        ),
      ),
    );
  }
}
