import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final String uid;
  // ↓ constructor which catches uid from "await DatabaseService "on "auth.dart"
  DatabaseService({ this.uid });

  // collection reference(new collection is created when there's no collection on database)
  final CollectionReference brewCollection = Firestore.instance.collection('brews');

  // define function which is called in "auth.dart" when user signs up
  Future updateUserData(String sugars, String name, int strength) async {
    return await brewCollection.document(uid).setData({
      'sugars': sugars,
      'name': name,
      'strength': strength,
    });
  }



  // 
}