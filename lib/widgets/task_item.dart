import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../models/task.dart';
import '../providers/task_provider.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key, required this.task});
  final Task task;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go('/details/${task.id}');
      },
      child: ListTile(
        title: Text(task.title,
            style: TextStyle(
              decoration: task.isDone
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            )),
        leading: Checkbox(
          value: task.isDone,
          onChanged: (_) {
            Provider.of<TaskProvider>(context, listen: false)
                .toggleDone(task.id);
          },
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    final TextEditingController _controller =
                        TextEditingController(text: task.title);
                    return AlertDialog(
                      title: const Text('Edit Task'),
                      content: TextField(
                        controller: _controller,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            if (_controller.text.isNotEmpty) {
                              Provider.of<TaskProvider>(context, listen: false)
                                  .updateTask(task.id, _controller.text);
                              Navigator.of(context).pop();
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Title cannot be empty'),
                                ),
                              );
                            }
                          },
                          child: const Text('Save'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                Provider.of<TaskProvider>(context, listen: false)
                    .removeTask(task.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
