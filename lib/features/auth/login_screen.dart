import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ShadCard(
          width: 350,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Login', style: ShadTheme.of(context).textTheme.h2),
              const SizedBox(height: 20),
              ShadInput(placeholder: const Text('Email')),
              const SizedBox(height: 10),
              ShadInput(placeholder: const Text('Password'), obscureText: true),
              const SizedBox(height: 20),
              ShadButton(
                width: double.infinity,
                onPressed: () => context.go('/'),
                child: const Text('Sign In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
