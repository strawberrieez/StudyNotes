part of '_index.dart';

class LoginCtrl {
  init() => logxx.i(LoginCtrl, '...');

  signInAnonymously() {
    _sv.signInAnonymously();
  }

  signInByGoogle() {
    _sv.signInByGoogle();
  }

  signInByEmailPassword() async {
    await _sv.signInByEmailPassword(
      email: _dt.rxEmail.value,
      password: _dt.rxPassword.value,
    );
  }

  submit() {
    _dt.rxForm.submit();
  }
}
