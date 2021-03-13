import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:rolleat_mobile/stores/nav_store.dart';
import 'package:rolleat_mobile/widgets/drawer.dart';

import 'app/home_page.dart';
import 'app/profile_page.dart';
import 'app/settings_page.dart';

class Scaffolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<NavStore>(
      create: (context) => NavStore([
        HomePage(),
        ProfilePage(),
        SettingsPage(),
      ]),
      child: Builder(
        builder: (BuildContext context) {
          return Observer(
            builder: (_) {
              return Scaffold(
                drawer: RolleatDrawer(),
                appBar: AppBar(
                  title: Text("RollEat"),
                ),
                body: context.watch<NavStore>().currentPage,
              );
            },
          );
        },
      ),
    );
  }
}
