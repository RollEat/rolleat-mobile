// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthStore on _AuthStore, Store {
  Computed<FirebaseAuth> _$authComputed;

  @override
  FirebaseAuth get auth => (_$authComputed ??=
          Computed<FirebaseAuth>(() => super.auth, name: '_AuthStore.auth'))
      .value;

  final _$authChangesAtom = Atom(name: '_AuthStore.authChanges');

  @override
  ObservableStream<User> get authChanges {
    _$authChangesAtom.reportRead();
    return super.authChanges;
  }

  @override
  set authChanges(ObservableStream<User> value) {
    _$authChangesAtom.reportWrite(value, super.authChanges, () {
      super.authChanges = value;
    });
  }

  final _$signInWithGoogleAsyncAction =
      AsyncAction('_AuthStore.signInWithGoogle');

  @override
  Future<void> signInWithGoogle() {
    return _$signInWithGoogleAsyncAction.run(() => super.signInWithGoogle());
  }

  final _$signOutAsyncAction = AsyncAction('_AuthStore.signOut');

  @override
  Future signOut() {
    return _$signOutAsyncAction.run(() => super.signOut());
  }

  @override
  String toString() {
    return '''
authChanges: ${authChanges},
auth: ${auth}
    ''';
  }
}
