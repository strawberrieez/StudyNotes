part of '_index.dart';

class RegisterCtrl {
  init() => logxx.i(RegisterCtrl, '...');

  createAccountByEmailPassword() async {
    await _sv.createAccountByEmailPassword(
      email: _dt.rxEmail.value,
      password: _dt.rxPassword.value,
    );
  }

  submit() {
    _dt.rxForm.submit();
  }
}
