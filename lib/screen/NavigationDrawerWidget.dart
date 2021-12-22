import 'package:assignment1/screen/FavoritePage.dart';
import 'package:assignment1/screen/NotificationsPage.dart';
import 'package:assignment1/screen/PeoplePage.dart';
import 'package:assignment1/screen/PluginsPage.dart';
import 'package:assignment1/screen/UpdatesPage.dart';
import 'package:assignment1/screen/UserPage.dart';
import 'package:assignment1/screen/WorkflowPage.dart';
import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final Padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final name = 'Ekpe Wise';
    final email = 'wiserichiestone@gmail.com';
    final urlImage =
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';

    return Drawer(
        child: Material(
      color: Color.fromRGBO(200, 20, 20, 5),
      child: ListView(
        children: <Widget>[
          buildHeader(
            urlImage: urlImage,
            name: name,
            email: email,
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    UserPage(name: name, urlImage: urlImage))),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: Padding,
            child: Column(
              children: [
                buildMenuItem(
                    text: 'People',
                    icon: Icons.account_box,
                    onClicked: () => selectedItem(context, 0)),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: Padding,
            child: Column(
              children: [
                buildMenuItem(
                    text: 'Favorite',
                    icon: Icons.favorite,
                    onClicked: () => selectedItem(context, 1)),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: Padding,
            child: Column(
              children: [
                buildMenuItem(
                    text: 'Workflow',
                    icon: Icons.work_outline,
                    onClicked: () => selectedItem(context, 2)),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: Padding,
            child: Column(
              children: [
                buildMenuItem(
                    text: 'Updates',
                    icon: Icons.update,
                    onClicked: () => selectedItem(context, 3)),
              ],
            ),
          ),

          // the divided sectio
          const SizedBox(
            height: 10,
          ),
          Divider(color: Colors.white70),
          const SizedBox(
            height: 24,
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: Padding,
            child: Column(
              children: [
                buildMenuItem(
                    text: 'Plugins',
                    icon: Icons.account_tree_outlined,
                    onClicked: () => selectedItem(context, 4)),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            padding: Padding,
            child: Column(
              children: [
                buildMenuItem(
                    text: 'Notifications',
                    icon: Icons.notifications,
                    onClicked: () => selectedItem(context, 5)),
              ],
            ),
          ),
        ],
      ),
    ));
  }

// callig the buildheader function

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: Padding.add(EdgeInsets.symmetric(vertical: 40)),
          child: Row(children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(urlImage),
            ),
            SizedBox(width: 5),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(name, style: TextStyle(fontSize: 20, color: Colors.white)),
              const SizedBox(height: 4),
              Text(
                email,
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ]),
            Spacer(),
            CircleAvatar(
              radius: 15,
              backgroundColor: Color.fromRGBO(30, 60, 168, 1),
              child: Icon(Icons.star_outline, color: Colors.white),
            ),
          ]),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PeoplePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FavoritePage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => WorkflowPage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => UpdatesPage(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PluginsPage(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => NotificationsPage(),
        ));
        break;
    }
  }
}
