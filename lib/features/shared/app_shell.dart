import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class AppShell extends StatelessWidget {
  final Widget child;
  final String currentPath;

  const AppShell({Key? key, required this.child, required this.currentPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Basic responsive layout with Sidebar
    final isDesktop = MediaQuery.of(context).size.width > 800;

    return Scaffold(
      body: Row(
        children: [
          if (isDesktop) _buildSidebar(context),
          Expanded(
            child: Column(
              children: [
                _buildHeader(context),
                Expanded(child: child),
              ],
            ),
          ),
        ],
      ),
      drawer: !isDesktop ? Drawer(child: _buildSidebar(context)) : null,
    );
  }

  Widget _buildSidebar(BuildContext context) {
    return Container(
      width: 250,
      color: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          const SizedBox(height: 20),
          // Logo
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.blue[900], // Primary Blue
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    'D',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Devizo AI',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          // Navigation
          _navItem(context, 'Dashboard', '/', LucideIcons.layoutDashboard),
          _navItem(context, 'Assistant', '/assistant', LucideIcons.bot),
          _navItem(context, 'Tasks', '/tasks', LucideIcons.listTodo),
          _navItem(context, 'Documents', '/documents', LucideIcons.fileText),
          _navItem(context, 'Clients', '/clients', LucideIcons.users),
          const Spacer(),
          _navItem(context, 'Settings', '/settings', LucideIcons.settings),
          _navItem(context, 'Help', '/help', LucideIcons.info),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _navItem(BuildContext context, String label, String path, IconData icon) {
    final isSelected = currentPath == path;
    return InkWell(
      onTap: () => context.go(path),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        color: isSelected ? Theme.of(context).colorScheme.primary.withValues(alpha: 0.1) : null,
        child: Row(
          children: [
            Icon(
              icon,
              color: isSelected ? Theme.of(context).colorScheme.primary : Colors.grey,
              size: 20,
            ),
            const SizedBox(width: 10),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Theme.of(context).colorScheme.primary : Colors.black87,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (MediaQuery.of(context).size.width <= 800)
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          const Spacer(),
          // Quick Actions
          ShadButton(
            child: const Text('New Quote'),
            onPressed: () {}, // TODO: Open modal
          ),
          const SizedBox(width: 10),
          ShadButton(
            child: const Text('New Invoice'),
            backgroundColor: Colors.green,
            onPressed: () {},
          ),
          const SizedBox(width: 20),
          const CircleAvatar(
            child: Text('U'),
          ),
        ],
      ),
    );
  }
}
