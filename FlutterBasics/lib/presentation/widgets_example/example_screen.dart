import 'package:flutter/material.dart';
import 'package:flutterbasics/application/theme_service.dart';
import 'package:provider/provider.dart';
import 'widget/widgetList.dart';
class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // one page를 의미(basic layout)
        backgroundColor: const Color.fromARGB(255, 127, 183, 216),
        appBar: AppBar(
          title: const Text("Flutter Basics"),
        ),
        body: const WidgetList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Provider.of<ThemeService>(context, listen: false).toggleTheme();
          },
          child: const Icon(Icons.ac_unit),
        ),
      );
  }
}
