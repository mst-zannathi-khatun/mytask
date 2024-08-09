import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/tasklistwidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return const TaskListWidget();
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add_box_outlined,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
