import 'package:firebase_auth/firebase_auth.dart';
class Auth{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential> signUp(String email, String password) async {
    final authResult = await _auth.createUserWithEmailAndPassword(email: email, password: password);
    return authResult ;
  }

  Future<UserCredential> signIn(String email , String password) async{
    final authResult = await _auth.signInWithEmailAndPassword(email: email, password: password);
    return authResult ;
  }

  Future<User> getUser() async {
    return await _auth.currentUser;
  }

  Future<void> signOut() async {
    return await _auth.signOut();
  }
}


