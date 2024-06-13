import 'package:flutter/material.dart';
import 'package:project1/providers/task_provider.dart';
import 'package:provider/provider.dart';

class TaskDetailScreen extends StatelessWidget {
  final String id;
  const TaskDetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    var task = Provider.of<TaskProvider>(context).findById(id);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              task.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Status: ',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  task.isDone ? 'Completed' : 'In Progress',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: task.isDone
                            ? Theme.of(context).colorScheme.secondary
                            : Theme.of(context).colorScheme.primary,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
