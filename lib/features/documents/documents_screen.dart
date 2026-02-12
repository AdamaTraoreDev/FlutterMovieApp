import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class DocumentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShadCard(
      child: Center(
        child: Text('Documents', style: ShadTheme.of(context).textTheme.h1),
      ),
    );
  }
}
