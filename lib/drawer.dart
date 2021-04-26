import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountName: Text("Waqar Ahmed"),
              accountEmail: Text("wlwaqarah0@gmail.com"),
              currentAccountPicture: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1616874535244-73aea5daadb9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80"),
                ),
              ),
            ),
          ),
          ListTile(
            title: Text("Account"),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.edit),
            subtitle: Text("personal"),
          ),
          ListTile(
            title: Text("Email"),
            leading: Icon(Icons.email),
            subtitle: Text("wlwaqarah0@gmail.com"),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            title: Text("Logout"),
          ),
        ],
      ),
    );
  }
}
