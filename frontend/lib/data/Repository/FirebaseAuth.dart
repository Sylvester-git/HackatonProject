import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:sqaure_project/data/model/UserModel.dart';

class AuthRepo {
  final firebase_auth.FirebaseAuth _firebaseAuth;

  AuthRepo({firebase_auth.FirebaseAuth? firebaseAuth})
      : _firebaseAuth = firebaseAuth ?? firebase_auth.FirebaseAuth.instance;

  var currentUser = user.empty;

  //Manage authstatechanges
  Stream<user> get users {
    return _firebaseAuth.authStateChanges().map((firebaseuser) {
      final userinfo = firebaseuser == null ? user.empty : firebaseuser.toUser;
      currentUser = userinfo;
      return currentUser;
    });
  }

  //Login
  Future<void> login({required String email, required String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw e.code;
    }
  }

  //Create a new user
  Future<void> signup({required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw e.code;
    }
  }

  //logout
  Future<void> logout() async {
    try {
      await Future.wait([_firebaseAuth.signOut()]);
    } catch (_) {}
  }

  //Forgot passoword
  Future<void> forgotpassword({required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(
        email: email,
      );
    } on firebase_auth.FirebaseAuthException catch (e) {
      throw e.code;
    }
  }
}

//Convert a Firebase user object into a user class object
extension on firebase_auth.User {
  user get toUser {
    return user(
      id: uid,
      emailAdress: email,
      
    );
  }
}
