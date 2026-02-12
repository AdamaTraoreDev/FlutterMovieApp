import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'config/theme.dart';
import 'features/shared/app_shell.dart';
import 'features/dashboard/dashboard_screen.dart';
import 'features/tasks/tasks_screen.dart';
import 'features/documents/documents_screen.dart';
import 'features/clients/clients_screen.dart';
import 'features/assistant/assistant_screen.dart';
import 'features/settings/settings_screen.dart';
import 'features/help/help_screen.dart';
import 'features/auth/login_screen.dart';
import 'features/quote/public_quote_screen.dart';

void main() {
  runApp(const ProviderScope(child: DevizoApp()));
}

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/quote/:token',
      builder: (context, state) => PublicQuoteScreen(token: state.pathParameters['token']),
    ),
    ShellRoute(
      builder: (context, state, child) {
        return AppShell(currentPath: state.matchedLocation, child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => DashboardScreen(),
        ),
        GoRoute(
          path: '/tasks',
          builder: (context, state) => TasksScreen(),
        ),
        GoRoute(
          path: '/documents',
          builder: (context, state) => DocumentsScreen(),
        ),
        GoRoute(
          path: '/clients',
          builder: (context, state) => ClientsScreen(),
        ),
        GoRoute(
          path: '/assistant',
          builder: (context, state) => AssistantScreen(),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => SettingsScreen(),
        ),
        GoRoute(
          path: '/help',
          builder: (context, state) => HelpScreen(),
        ),
      ],
    ),
  ],
);

class DevizoApp extends ConsumerWidget {
  const DevizoApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ShadApp.router(
      title: 'Devizo AI',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerConfig: _router,
    );
  }
}