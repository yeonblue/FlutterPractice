import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterbasics/presentation/counter/counter_screen.dart';
import 'package:flutterbasics/presentation/list/list_screen.dart';
import 'package:flutterbasics/presentation/widgets_example/widget/widgetList.dart';

class RootBottomNavigation extends StatefulWidget {
  const RootBottomNavigation({super.key});

  @override
  State<RootBottomNavigation> createState() => _RootBottomNavigationState();
}

class _RootBottomNavigationState extends State<RootBottomNavigation> {

  int _currentIdx = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIdx,
        children: const [
          WidgetList(),
          CounterScreen(),
          ListScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIdx,
        onTap: (value) {
          setState(() {
            _currentIdx = value;
          });
        },
        selectedItemColor: Colors.red,
        backgroundColor: Colors.amber,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Example'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Counter'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
        ]
      ),
    );
  }
}