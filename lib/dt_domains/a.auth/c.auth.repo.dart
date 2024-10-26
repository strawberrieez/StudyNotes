part of '_index.dart';

class AuthRepo {
  Future<void> signInAnonymously() async {
    await FirebaseAuth.instance.signInAnonymously();
  }

  Future<void> signInByGoogle() async {
    final GoogleAuthProvider provider = GoogleAuthProvider().setCustomParameters({"prompt": "select_account"});
    await FirebaseAuth.instance.signInWithPopup(provider);
  }

  Future<void> signInByEmailPassword({required email, required password}) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<void> createAccountByEmailPassword({required email, required password}) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  //* optional
  Future<void> deleteAccount() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }
}
