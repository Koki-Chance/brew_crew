import 'package:brew_crew/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on FirebaseUser
  User _userFromFirebaseUser(FirebaseUser user) {
    // もしも　user が null だったら、 User(uid: user.uid) を返す。それ以外は null を返す。
    return user != null ? User(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<User> get user {
    return _auth.onAuthStateChanged
      .map(_userFromFirebaseUser);
      // ↓ を省略すると ↑ のように記述できる
      // .map((FirebaseUser user) => _userFromFireaseUser(user));
  }

  // sign in anonymously
  Future signInAnon() async {
    try {
      // 以下の行の処理の完了に時間がかかるため、 await を記述して、処理完了まで次の処理に進まないようにする
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e) {
      print(e.toString());
      return null;

    }
  }

  //sign in with email & password

  // register with email & password

  // sign out

}