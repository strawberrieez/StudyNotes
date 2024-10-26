part of '_index.dart';

class AuthServ {
  void init() {
    logxx.i(AuthServ, '...');
    _pv.rxUser.subscription = FirebaseAuth.instance.authStateChanges().listen(
          (event) => _pv.rxUser.st = event,
        );
  }

  void onSetState() {
    logzz.i(AuthServ, 'rxCounter setState success');
  }

  signInAnonymously() => _rp.signInAnonymously();
  signInByGoogle() => _rp.signInByGoogle();
  createAccountByEmailPassword({required String email, required String password}) =>
      _rp.createAccountByEmailPassword(email: email, password: password);
  signInByEmailPassword({required String email, required String password}) =>
      _rp.signInByEmailPassword(email: email, password: password);
  signOut() => _rp.signOut();

  //*optional
  deleteAccount() => _rp.deleteAccount();

  responseAuthStates(User? user) async {
    if (nav.routeData.location == '/login' || nav.routeData.location == '/register') {
      if (user != null) {
        nav.toReplacement(Routes.home);
      }
    } else {
      if (user == null) {
        nav.toAndRemoveUntil(Routes.login);
      }
    }
  }
}
