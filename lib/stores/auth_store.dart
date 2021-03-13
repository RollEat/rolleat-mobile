import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mobx/mobx.dart';

part 'auth_store.g.dart';

class AuthStore extends _AuthStore with _$AuthStore {}

abstract class _AuthStore with Store {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  @computed
  FirebaseAuth get auth => _auth;

  @observable
  ObservableStream<User> authChanges = ObservableStream<User>(_auth.authStateChanges());

  @action
  Future<void> signInWithGoogle() async {
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    // Create a new credential
    final GoogleAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the UserCredential
    await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @action
  signOut() async {
    await _auth.signOut();
    print(authChanges.data);
  }
}
