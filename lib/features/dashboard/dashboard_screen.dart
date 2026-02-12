import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShadCard(
      child: Center(
        child: Text('Dashboard', style: ShadTheme.of(context).textTheme.h1),
      ),
    );
  }
}
