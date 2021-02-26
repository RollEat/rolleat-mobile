import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rolleat_mobile/state/user_state.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userState = Provider.of<UserState>(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Bonjour ${userState.user.displayName}",
            style: TextStyle(fontSize: 30),
          ),
          OutlineButton(
            child: Text("Sign out"),
            onPressed: () {
              userState.signOut();
            },
          ),
        ],
      ),
    );
  }
}
