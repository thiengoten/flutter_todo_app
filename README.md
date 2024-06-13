# Todo App

A new Flutter project.

## Getting Started

> [!IMPORTANT]
> run the following command to get dependencies from pubspec.yaml when first time clone the project

```bash
flutter pub get # get dependencies from pubspec.yaml when first time clone the project
```

## Folder Structure :shipit:

```bash
assets/ # for images, fonts, etc, that are used in the app
  images/ # for images (future use)
fonts/ # for fonts
lib/
  main.dart # Entry point of the app
  models/
    task.dart
  screens/
    task_sreen.dart
  widgets/
    task_list.dart
  routest/
    app_routes.dart
  providers/
    task_provider.dart
  theme/ #or it can put in utils/
    app_theme.dart
  utils/ #optional
```

### Explanation

- `screens/` folder contains all the screens of the app!

> [!NOTE]
> Giống với pages trong reactjs

- `widgets/` folder contains all the widgets that are used in the app!

> [!NOTE]
> Giống với components trong reactjs

- `providers/` folder contains all the providers that are used in the app!

> [!NOTE]
> Giống với context trong reactjs (context api)
