import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rolleat_mobile/stores/auth_store.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authStore = Provider.of<AuthStore>(context);
    return Container(
      child: Center(
        child: TextButton(
          child: Text("Sign out"),
          onPressed: authStore.signOut,
        )
      ),
    );
  }
}