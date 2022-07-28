import 'package:ephamarcy/services/authservice.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


  final authenticationProvider=Provider<AuthService>((ref){
    return AuthService();
    
  });

 final authStateProvider=StreamProvider<User?>((ref){
return ref.read(authenticationProvider).authStateChange;
 });
