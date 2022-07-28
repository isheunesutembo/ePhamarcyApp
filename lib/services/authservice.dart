import 'package:ephamarcy/models/usermodel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  
  Stream<User?> get authStateChange => _firebaseAuth.authStateChanges();

  Future<void> signInWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
          
    } on FirebaseAuthException catch (e) {
      await showDialog(
          context: context,
          builder: ((context) => AlertDialog(
                title: Text("Error Occured"),
                content: Text(e.toString()),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Ok"))
                ],
              )));
    }
  }

  Future<void>signupWithEmailAndPassword(String email,String password,BuildContext context)async{
    try{
      _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    }on FirebaseAuthException catch (e) {
      await showDialog(
          context: context,
          builder: ((context) => AlertDialog(
                title: Text("Error Occured"),
                content: Text(e.toString()),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Ok"))
                ],
              )));
    }catch(e){
      if(e=='email already in use'){
        print("email already in use");
      }else{
        print("Error:$e");
      }
    }
  } 

  Future<void>signOut()async{
    await _firebaseAuth.signOut();
  }
}
