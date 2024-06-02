import 'package:flutter/material.dart';

class UserHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: Text(
        'UDINN',
        style: TextStyle(fontSize: 18),
      ),
      accountEmail: null,
      currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage('images/hutao.png'),
      ),
      decoration: BoxDecoration(color: Colors.green[800]),
      currentAccountPictureSize: Size(85, 85),
    );
  }
}
