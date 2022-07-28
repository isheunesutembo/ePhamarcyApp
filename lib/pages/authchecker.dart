import 'package:ephamarcy/pages/errorscreen.dart';
import 'package:ephamarcy/pages/home.dart';
import 'package:ephamarcy/pages/loadingscreen.dart';
import 'package:ephamarcy/pages/register.dart';
import 'package:ephamarcy/pages/signin.dart';
import 'package:ephamarcy/providers/authprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthChecker extends ConsumerWidget {
  const AuthChecker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _authState = ref.watch(authStateProvider);

    return _authState.when(
        data: (data) {
          if (data != null) return Home();
          return SignIn();
        },
        loading: () => const LoadingScreen(),
        error: (e, trace) => ErrorScreen(e, trace));
  }
}
