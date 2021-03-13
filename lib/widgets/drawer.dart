import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rolleat_mobile/stores/auth_store.dart';
import 'package:rolleat_mobile/stores/nav_store.dart';

class RolleatDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authStore = Provider.of<AuthStore>(context);
    final navStore = Provider.of<NavStore>(context);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Hello ${authStore.auth.currentUser.displayName}'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              navStore.changePage(0);
            },
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              navStore.changePage(1);
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              navStore.changePage(2);
            },
          ),
        ],
      ),
    );
  }
}
