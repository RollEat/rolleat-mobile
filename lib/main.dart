import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';
import 'pages/sign_in_page.dart';
import 'state/user_state.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      Provider(
        create: (_) => UserState(),
      ),
    ],
    child: App(),
  ));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("RollEat"),
        ),
        body: Observer(
          builder: (context) {
            switch (userState.isLoggedIn) {
              case true:
                return HomePage();
              case false:
                return SignInPage();
            }

            return Center(
              child: Text("What the fuck have i done"),
            );
          },
        ),
      ),
    );
  }
}
