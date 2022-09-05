# kamus_cs

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Extension VsCode

1. bloc
2. Dart
3. Flutter
4. GitLens (Bisa digunakan untuk melihat siapa yang melakukan commit per barisnya)

## Before Start Server

1. Delete Folder .fvm
2. Install PUB fvm nya di terminal 'dart pub global activate fvm'
3. update fvm ke 2.10.3 'fvm install 2.10.3' -> 'fvm use 2.10.3'
4. cek fvm version 'fvm list'

## Start Server

### Mobile

```sh
# without fvm
flutter run
```

```sh
# with fvm
fvm flutter run
```

### Web

```sh
# without fvm
flutter run -d <browser use>
```

```sh
# with fvm
fvm flutter run -d <browser use>
```

## Build APK & ABB & WEB

```sh
# for mobile (.apk)
fvm flutter build apk 
```

```sh
# for mobile (.aab)
fvm flutter build appbundle 
```

```sh
# for web
fvm flutter build web 
```
