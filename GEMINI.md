# Devizo AI - Project Documentation

## Overview
Devizo AI is a French artisan business management tool built with Flutter for desktop and web.
It features a dashboard, task management, document generation (quotes/invoices), client management, and an AI assistant.

## Tech Stack
- **Framework**: Flutter (Desktop + Web)
- **Language**: Dart
- **State Management**: flutter_riverpod
- **Routing**: go_router
- **UI Component Library**: shadcn_ui (Flutter port)
- **Icons**: lucide_icons
- **Charts**: fl_chart
- **Localization**: intl

## Architecture
- **Feature-first structure**: `lib/features/{feature_name}`
- **Shared Components**: `lib/features/shared`
- **Configuration**: `lib/config` (Theme, Router)
- **Data Layer**: `lib/data` (Mock Services, Models)

## Features Implemented (v1.0.0-alpha)
- [x] Project Setup & Dependencies
- [x] Design System (Theme, Colors, Typography)
- [x] App Shell (Sidebar, Header)
- [x] Routing Configuration (go_router)
- [x] Mock Data Service
- [x] Dashboard (Placeholder)
- [x] Tasks (Placeholder)
- [x] Documents (Placeholder)
- [x] Clients (Placeholder)
- [x] Assistant (Placeholder)
- [x] Public Quote View (Placeholder)
- [x] Login & Settings (Placeholder)

## Next Steps
- Implement detailed UI for Dashboard widgets.
- Implement Task DataTable with filtering.
- Implement Document creation flow.
- Connect AI Assistant to backend (currently placeholder).
