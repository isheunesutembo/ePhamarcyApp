import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageService {
  final FirebaseStorage _firebaseStorage;
  FirebaseStorageService({required FirebaseStorage firebaseStorage})
      : _firebaseStorage = firebaseStorage;
}
