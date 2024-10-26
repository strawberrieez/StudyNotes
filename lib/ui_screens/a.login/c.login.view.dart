part of '_index.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnFormBuilder(
        listenTo: _dt.rxForm,
        builder: () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  controller: _dt.rxEmail.controller,
                  decoration: InputDecoration(
                    labelText: 'input email',
                    errorText: _dt.rxEmail.error,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              OnFormBuilder(
                listenTo: _dt.rxForm,
                builder: () => TextField(
                  controller: _dt.rxPassword.controller,
                  decoration: InputDecoration(
                    labelText: 'input password',
                    errorText: _dt.rxPassword.error,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              SignInButton(
                Buttons.google,
                onPressed: () async {
                  _ct.signInByGoogle();
                },
              ),
              const SizedBox(height: 25),
              OnFormSubmissionBuilder(
                listenTo: _dt.rxForm,
                onSubmitting: () => const CircularProgressIndicator(),
                child: ElevatedButton(
                  onPressed: () {
                    _ct.submit();
                  },
                  child: const Text(
                    "submit",
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  nav.to(Routes.register);
                },
                child: const Text(
                  "Don't have an account? sign up!",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
