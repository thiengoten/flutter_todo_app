import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/task_provider.dart';
import '../widgets/task_item.dart';

class TaskScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TODO List'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Add a task',
                contentPadding: const EdgeInsets.all(20.0),
                suffixIcon: Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                    // How to make this button style is filled with color white and background color is blue
                    // To do this, wrap the IconButton with a Container widget and set the color property to Colors.blue
                    color: Colors.white,
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      if (_controller.text.isNotEmpty) {
                        Provider.of<TaskProvider>(context, listen: false)
                            .addTask(_controller.text);
                        _controller.clear();
                      }
                    },
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: Consumer<TaskProvider>(
              builder: (context, taskProvider, child) {
                return ListView.builder(
                  itemCount: taskProvider.tasks.length,
                  itemBuilder: (context, index) {
                    var task = taskProvider.tasks[index];
                    return TaskItem(task: task);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
