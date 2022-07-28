import 'package:ephamarcy/pages/authchecker.dart';
import 'package:ephamarcy/pages/errorscreen.dart';
import 'package:ephamarcy/pages/home.dart';
import 'package:ephamarcy/pages/loadingscreen.dart';
import 'package:ephamarcy/pages/register.dart';
import 'package:ephamarcy/pages/signin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

final firebaseinitializerProvider = FutureProvider<FirebaseApp>((ref) async {
  return await Firebase.initializeApp();
});

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialize = ref.watch(firebaseinitializerProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: initialize.when(
          data: (data) {
            return const AuthChecker();
          },
          loading: () => const LoadingScreen(),
          error: (e, stackTrace) => ErrorScreen(e, stackTrace)),
    );
  }
}
