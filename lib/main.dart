import 'package:e_commerce02/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  /// widgets flutter binding
  // final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  /// flutter native splash
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const ProviderScope(child: MyApp()));
}