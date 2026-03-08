# Finance App

A modern Flutter application for personal finance management.

## 🚀 Getting Started

### Prerequisites

- Flutter SDK 3.41 or higher
- Dart SDK 3.0.0 or higher

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/thalissonmt/finance_app.git
   cd finance_app
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Generate code:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. Run the app:
   ```bash
   flutter run
   ```

## 🛠️ Tech Stack

- **Framework**: Flutter
- **State Management**: Riverpod
- **Routing**: GoRouter
- **Networking**: Dio
- **Database**: Supabase

## 📂 Project Structure

```
lib/
├── core/
│   ├── network/        # Network layer (Dio client)
│   └── routing/        # Routing configuration (GoRouter)
├── features/
│   └── auth/           # Authentication module
│       └── presentation/ # UI screens
└── main.dart           # Application entry point
```

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.