import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:rolleat_mobile/stores/auth_store.dart';

import 'pages/auth_page.dart';
import 'pages/scaffold.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authStore = Provider.of<AuthStore>(context);
    return Observer(
      name: "Auth listener",
      builder: (_) {
        switch (authStore.authChanges.data) {
          case null:
            print("Going to login page");
            return AuthPage();
          default:
            print("Going to app");
            return Scaffolder();
        }
      },
    );
  }
}
