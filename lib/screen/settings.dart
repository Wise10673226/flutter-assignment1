import 'package:assignment1/screen/NavigationDrawerWidget.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Settings'),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          Container(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Your account'),
              subtitle: Text('Personalize your data here'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.lock),
              title: Text('Privacy and Safety'),
              subtitle: Text('Access your private stuff here'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              subtitle: Text('Enable and disable your notifications'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.add),
              title: Text('Additional Resources'),
              subtitle: Text('You can always add more resources'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.logout),
              title: Text('Log out'),
              subtitle: Text('You can always come back'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}
