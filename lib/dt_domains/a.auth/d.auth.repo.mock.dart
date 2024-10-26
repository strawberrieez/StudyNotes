part of '_index.dart';

class AuthRepoMock implements AuthRepo {
  @override
  Future<void> createAccountByEmailPassword({required email, required password}) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteAccount() {
    throw UnimplementedError();
  }

  @override
  Future<void> signInAnonymously() {
    throw UnimplementedError();
  }

  @override
  Future<void> signInByEmailPassword({required email, required password}) {
    throw UnimplementedError();
  }

  @override
  Future<void> signInByGoogle() {
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() {
    throw UnimplementedError();
  }
  
}