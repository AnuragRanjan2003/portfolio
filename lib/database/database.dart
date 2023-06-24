import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:portfolio/models/user.dart';

class Database {
  final _storage = FirebaseStorage.instance.ref();
  final _database = FirebaseFirestore.instance;

  DocumentReference<User> get userRef => _database.collection('user').doc('1').withConverter<User>(
      fromFirestore: (snapshot, options) => User.fromJson(snapshot.data()!),
      toFirestore: (value, options) => value.toJson());
}
