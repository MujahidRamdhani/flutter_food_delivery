import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_drawer_tile.dart';
import 'package:food_delivery/pages/setting_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(children: [
        // app logo
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Icon(
            Icons.lock_open_rounded,
            size: 80,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Divider(
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),

        // home list title
        MyDrawerTile(
          text: "H O M E",
          icon: Icons.home,
          onTap: () => Navigator.pop(context),
        ),

        // settings list title
        MyDrawerTile(
          text: "S E T T I N G S",
          icon: Icons.settings,
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SettingPage()));
          },
        ),

        // logout list title
        MyDrawerTile(text: "L O G O U T", icon: Icons.logout, onTap: () {}),
      ]),
    );
  }
}
