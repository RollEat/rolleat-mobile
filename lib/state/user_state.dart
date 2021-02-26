import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';

part 'user_state.g.dart';

class UserState = _UserState with _$UserState;

abstract class _UserState with Store {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  _UserState() {
    checkSignedIn();
  }

  @computed
  User get user => _auth.currentUser;

  @observable
  bool isLoggedIn = false;

  @action
  void checkSignedIn() {
    if (_auth.currentUser != null) {
      isLoggedIn = true;
    } else {
      isLoggedIn = false;
    }
  }

  @action
  Future<void> signIn(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      checkSignedIn();
    } catch (e) {
      print(e);
    }
  }

  @action
  Future<void> signOut() async {
    try {
      await _auth.signOut();
      checkSignedIn();
    } catch (e) {
      print(e);
    }
  }
}
