import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:personal_task_manager/screens/contact_us.dart';
import 'package:personal_task_manager/screens/home_screen.dart';
import 'package:personal_task_manager/screens/setting_screen.dart';
import 'package:personal_task_manager/screens/task_calender.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 74, 20, 140),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                  'assets/todo.svg', // Replace with your SVG file path
                  height: 80,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_page),
              title: Text('Contact Us'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUsScreen()));
              },
            ),

            ListTile(
              leading: Icon(Icons.calendar_view_month_outlined),
              title: Text('Callender task'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CalendarScreen()));
              },
            ),
            
          ],
        ),
      );
  }
}

