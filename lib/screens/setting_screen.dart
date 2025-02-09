import 'package:flutter/material.dart';
import 'package:personal_task_manager/widgets/appdrawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              title: const Text('Account Settings'),
              onTap: () {              },
            ),
            ListTile(
              title: const Text('Notification Settings'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Privacy Settings'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Help & Support'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
