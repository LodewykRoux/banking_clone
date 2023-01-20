import 'package:banking_clone/screens/auth/welcome.dart';
import 'package:banking_clone/service/navigation_service.dart';
import 'package:banking_clone/service/scaffold_messenger_service.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  Widget _loginText() {
    return Container(
      color: Colors.black,
      child: TextFormField(
        onFieldSubmitted: (value) {
          if (value == '1234') {
            NavigationService.instance.push(Welcome());
          } else {
            ScaffoldMessengerService.instance.displayError('Incorrect pin');
          }
        },
        style: const TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        keyboardType: TextInputType.number,
        obscureText: true,
        decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.lock_outline,
              color: Colors.white,
            ),
            label: Text(
              'Remote PIN',
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }

  Widget _loginButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 18),
        child: Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _forgetPinButton() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          side: const BorderSide(color: Colors.blue)),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 18),
        child: Text(
          'Forgot PIN',
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
        centerTitle: true,
        title: Column(
          children: const [
            Text('hello'),
            Text('Lodewyk'),
          ],
        ),
      ),
      backgroundColor: Colors.grey[800],
      body: Column(
        children: [
          _loginText(),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _loginButton(),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: _forgetPinButton(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
