import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rolleat_mobile/stores/auth_store.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MultiProvider(
    providers: [
      Provider<AuthStore>(
        create: (_) => AuthStore(),
      )
    ],
    child: MaterialApp(
      home: Material(child: App()),
    ),
  ));
}
