# Devizo AI - Artisan Management Tool

Devizo AI is a French artisan business management tool built with Flutter for desktop (Windows/Linux/macOS) and web.

## Features
- **Dashboard**: Stats (revenue, quotes, tasks, clients), health monitor, alerts.
- **Sidebar**: Navigation to Dashboard, Assistant, Tasks, Documents, Clients.
- **Tasks**: Table view with priority, status, client, document links, due dates.
- **Documents**: Quote/Invoice management with preview/edit/send modals.
- **Clients**: Client list with details.
- **Assistant**: AI business assistant.
- **Public Quote**: Public page for clients to view & accept quotes.

## Getting Started

### Prerequisites
- Flutter SDK (latest stable)
- Dart SDK

### Running the App

```bash
flutter pub get
flutter run -d windows # For Windows
flutter run -d linux   # For Linux
flutter run -d macos   # For macOS
flutter run -d chrome  # For Web
```

## Structure
- `lib/config`: Theme and routing configuration.
- `lib/data`: Mock data services and models.
- `lib/features`: Feature-based modules (dashboard, tasks, etc.).
- `lib/shared`: Shared widgets and utilities.

## Mock Data
The app uses hardcoded mock data for demonstration purposes (`lib/data/services/mock_service.dart`).