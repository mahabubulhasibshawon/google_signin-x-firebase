import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
  final _firebaseAuth = FirebaseAuth.instance;

  // reg method
  Future<void> signUp({required String email, required String password}) async {
    try {
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw Exception('Weak password');
      } else if (e.code == 'email-already-in-use') {
        throw Exception('dubplicate email');
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
