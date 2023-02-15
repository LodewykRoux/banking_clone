import 'package:banking_clone/widget/tile/account_list_tile.dart';
import 'package:banking_clone/widget/tile/event_tile_row.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FittedBox(
          fit: BoxFit.scaleDown,
          child: TextButton(
            child: const Text(
              'Sign Out',
              softWrap: false,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ),
        title: const Text(
          'GlobalOne',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) {
              return {'Logout', 'Settings'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Expanded(
              child: AccountListTile(
                leadingColor: Colors.lightBlue,
                iconData: Icons.money,
                title: Text(
                  'Checking account',
                  style: TextStyle(
                    color: Colors.lightBlue,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Expanded(
              child: AccountListTile(
                leadingColor: Colors.lightBlue,
                iconData: Icons.money,
                title: Text(
                  'Checking account',
                  style: TextStyle(
                    color: Colors.lightBlue,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Expanded(
              child: AccountListTile(
                leadingColor: Colors.lightBlue,
                iconData: Icons.money,
                title: Text(
                  'Checking account',
                  style: TextStyle(
                    color: Colors.lightBlue,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Expanded(
                      flex: 2,
                      child: EventTileRow(
                        firstIcon: Icons.install_mobile,
                        firstText: 'Buy prepaid mobile',
                        secondIcon: Icons.lightbulb_outline,
                        secondText: 'Buy electricity',
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: EventTileRow(
                        firstIcon: Icons.people,
                        firstText: 'Pay beneficiary',
                        secondIcon: Icons.transfer_within_a_station,
                        secondText: 'Transfer money',
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: EventTileRow(
                        firstIcon: Icons.attach_money,
                        firstText: 'Send cash',
                        secondIcon: Icons.auto_graph,
                        secondText: 'Track money',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
