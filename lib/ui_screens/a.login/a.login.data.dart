part of '_index.dart';

class LoginData {
  final rxTitle = 'Login'.inj();

  final rxUser = _pv.rxUser;

  final rxEmail = RM.injectTextEditing(validators: [
    Validate.isNotEmpty,
    Validate.isEmail,
  ]);

  final rxPassword = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.pwdContain,
    ],
  );

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await _ct.signInByEmailPassword();
    },
  );
}
