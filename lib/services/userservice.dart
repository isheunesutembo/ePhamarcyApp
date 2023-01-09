import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ephamarcy/constants/firebase_constants.dart';
import 'package:ephamarcy/models/user.dart';
import 'package:ephamarcy/services/firebasestorageservice.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserService {
  

  UserModel? _userFromFirebaseSnapshot(DocumentSnapshot snapshot) {
    return snapshot != null
        ? UserModel(
            uid: snapshot.id,
            firstname: snapshot['firstname'] ?? '',
            lastname: snapshot['lastname'] ?? '',
            profileImage: snapshot['profileImage'] ?? '',
            address: snapshot['address'] ?? '')
        : null;
  }

  Stream<UserModel?>getUserInfo(uid){
    return FirebaseFirestore.instance
    .collection(FirebaseConstants.usersCollection)
    .doc(uid)
    .snapshots()
    .map(_userFromFirebaseSnapshot);
  }
}
