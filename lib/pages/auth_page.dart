import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rolleat_mobile/stores/auth_store.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthStore>(context);

    return Container(
      child: Center(
        child: TextButton(
          child: Text("Sign in"),
          onPressed: auth.signInWithGoogle,
        ),
      ),
    );
  }
}
