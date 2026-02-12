import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShadCard(
      child: Center(
        child: Text('Tasks', style: ShadTheme.of(context).textTheme.h1),
      ),
    );
  }
}
