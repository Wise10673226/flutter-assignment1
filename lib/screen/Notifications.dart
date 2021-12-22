import 'package:assignment1/screen/Homepage.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Notifications'),
        centerTitle: true,
        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('Disable notifications'),
              ),
              PopupMenuDivider(),
              PopupMenuItem(
                child: Text('Snooze'),
              ),
            ],
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListTile(
                leading: Icon(Icons.access_alarms),
                title: Text('Schedule Summary'),
                subtitle: Text('Schedule how you want your notifications'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {},
              ),
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.smart_display_sharp),
              title: Text('Show Previews'),
              subtitle: Text('Allow Previews in lock mode'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.share),
              title: Text('Screen Sharing'),
              subtitle: Text('Share your screen with others'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.notifications_active),
              title: Text('Notification Style'),
              subtitle:
                  Text('Customize how you want your notifications received'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
