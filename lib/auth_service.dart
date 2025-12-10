import 'package:firebase_auth/firebase_auth.dart';
import '../models/user_model.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel?> getCurrentUser() async {
    final user = _auth.currentUser;
    if (user == null) return null;

    return UserModel(
      uid: user.uid,
      username: user.displayName ?? "",
      email: user.email ?? "",
      photoUrl: user.photoURL ?? "",
      isVerified: false,
    );
  }

  Future<UserCredential> signIn(String email, String password) async {
    return await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<void> signOut() async => await _auth.signOut();
}