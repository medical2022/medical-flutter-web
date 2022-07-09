import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  FirebaseAuth auth = FirebaseAuth.instance;
  Future LoginAuth(String email, String password) async {
    var user =
        await auth.signInWithEmailAndPassword(email: email, password: password);

    return user;
  }

  Future RegisterAuth(String email, String password) async {
    var user = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
    return user;
  }

  Future signOut()async {
    return await auth.signOut();
    
  }
}
