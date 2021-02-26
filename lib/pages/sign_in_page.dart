import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rolleat_mobile/state/user_state.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  final FocusScopeNode _emailNode = FocusScopeNode();

  final FocusScopeNode _passwordNode = FocusScopeNode();

  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).requestFocus(_emailNode);
    final userState = Provider.of<UserState>(context);
    return Container(
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            focusNode: _emailNode,
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            autocorrect: true,
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 2),
              ),
            ),
            onSubmitted: (String text) {
              FocusScope.of(context).requestFocus(_passwordNode);
            },
          ),
          TextField(
            focusNode: _passwordNode,
            controller: _passwordController,
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 2),
              ),
            ),
            onSubmitted: (String text) {
              FocusScope.of(context).unfocus();
            },
          ),
          ElevatedButton(
            onPressed: () {
              userState.signIn(
                _emailController.text,
                _passwordController.text,
              );
            },
            child: Text("Sign in"),
          ),
        ],
      ),
    );
  }
}
