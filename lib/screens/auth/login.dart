import 'package:banking_clone/screens/auth/welcome.dart';
import 'package:banking_clone/screens/home/home_screen.dart';
import 'package:banking_clone/service/navigation_service.dart';
import 'package:banking_clone/service/scaffold_messenger_service.dart';
import 'package:banking_clone/widget/tile/event_tile.dart';
import 'package:banking_clone/widget/tile/event_tile_row.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _pin = '';

  Widget _loginText() {
    return ColoredBox(
      color: Colors.black,
      child: TextFormField(
        initialValue: _pin,
        onChanged: (value) {
          _pin = value;
        },
        onFieldSubmitted: (value) {
          if (value == '1234') {
            NavigationService.instance.push(const HomeScreen());
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
          ),
        ),
      ),
    );
  }

  Widget _loginButton() {
    return ElevatedButton(
      onPressed: () {
        if (_pin == '1234') {
          NavigationService.instance.push(const HomeScreen());
        } else {
          ScaffoldMessengerService.instance.displayError('Incorrect pin');
        }
      },
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
        side: const BorderSide(color: Colors.blue),
      ),
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
      resizeToAvoidBottomInset: false,
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
      body: Column(
        children: [
          _loginText(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _loginButton(),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: _forgetPinButton(),
                  ),
                  const Expanded(
                    flex: 2,
                    child: EventTileRow(
                      firstIcon: Icons.install_mobile,
                      firstText: 'Buy prepaid mobile',
                      secondIcon: Icons.lightbulb_outline,
                      secondText: 'Buy electricity',
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: EventTileRow(
                      firstIcon: Icons.people,
                      firstText: 'Pay beneficiary',
                      secondIcon: Icons.transfer_within_a_station,
                      secondText: 'Transfer money',
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: EventTileRow(
                      firstIcon: Icons.attach_money,
                      firstText: 'Send cash',
                      secondIcon: Icons.auto_graph,
                      secondText: 'Track money',
                    ),
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                  Column(
                    children: [
                      Text(
                        'Banking clone is not an authorised financial services provider and registered credit provider',
                        style: TextStyle(
                          color: Colors.grey[100],
                        ),
                        softWrap: true,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Banking Clone Limited Reg',
                        style: TextStyle(
                          color: Colors.grey[100],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
