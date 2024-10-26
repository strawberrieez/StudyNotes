part of '_index.dart';

class RegisterData {
  final rxTitle = 'Register'.inj();

  final rxForm = RM.injectForm(
    autovalidateMode: AutovalidateMode.onUserInteraction,
    submit: () async {
      await _ct.createAccountByEmailPassword();
    },
  );

  final rxEmail = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.isEmail,
    ],
  );

  final rxPassword = RM.injectTextEditing(
    validators: [
      Validate.isNotEmpty,
      Validate.pwdContain,
    ],
  );
}
